# De: https://stackoverflow.com/questions/16323571
def levenshtein_distance(s, t)
  m = s.length
  n = t.length
  return m if n == 0
  return n if m == 0
  d = Array.new(m+1) {Array.new(n+1)}

  (0..m).each {|i| d[i][0] = i}
  (0..n).each {|j| d[0][j] = j}
  (1..n).each do |j|
    (1..m).each do |i|
      d[i][j] = if s[i-1] == t[j-1]  # adjust index into string
                  d[i-1][j-1]       # no operation required
                else
                  [ d[i-1][j]+1,    # deletion
                    d[i][j-1]+1,    # insertion
                    d[i-1][j-1]+1,  # substitution
                  ].min
                end
    end
  end
  d[m][n]
end

def message(person, field, doc, people)
  closest = people.min_by(1) do |candidate|
    levenshtein_distance(candidate, person)
  end[0]

  "A pessoa '#{person}' especificada em '#{field}' no documento '#{doc.title}' (#{doc.path}) não existe. Talvez você quis dizer '#{closest}'?"
end


Jekyll::Hooks.register :documents, :pre_render do |document, payload|
  doc = document.to_liquid
  site = payload['site']['data']

  # Conjunto de pessoas do GELOS
  people = site['people']

  # Verificar que todos os presentes, se especificados, existem
  attendees = doc['attendees']
  attendees&.each do |person|
    raise message(person, 'attendees', doc, people.keys) unless people.key?(person)
  end

  # Verificar se o autor, caso especificado, existe
  author = doc['author']
  raise message(author, 'author', doc, people.keys) unless author.nil? || people.key?(author)
end
