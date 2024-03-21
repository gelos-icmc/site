{ stdenvNoCC, texlive, pandoc, gelos-theme }:

stdenvNoCC.mkDerivation {
  name = "gelos-atas";
  src = ./src/_meetings;

  nativeBuildInputs = [
    pandoc
    (texlive.withPackages (_: [gelos-theme]))
  ];

  buildPhase = ''
    for src_markdown in *-ata.md; do
      { pandoc -t beamer --shift-heading-level-by=-1 -V theme=gelos -V themeoptions=dark $src_markdown -o ''${src_markdown%-ata.md}.pdf && echo "Built $src_markdown"; } &
    done
    wait
  '';
  installPhase = "mkdir -p $out && cp *.pdf $out/";
}
