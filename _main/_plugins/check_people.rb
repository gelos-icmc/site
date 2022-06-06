require 'levenshtein'

def message(person, field, doc, people)
  closest = people.min_by(1) do |candidate|
    Levenshtein.distance(candidate, person)
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
