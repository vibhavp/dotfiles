(require 'skeleton)
(define-skeleton skel-latex-basic
  "Basic LaTeX skeleton."
  nil
  "\\documentclass[a4paper]{article}\n"
  "\\usepackage{euler}\n"
  "\\usepackage{mathtools}\n"
  "\\usepackage{concrete}\n\n"
  "\\begin{document}\n\n"
  "\\end{document}\n"
  )

(define-skeleton skel-c-basi
  "Basic C skeleton"
  nil
  "#include <stdio.h>\n"
  "#include <stdlib.h>\n"
  "int main()\n"
  "{\n"
  "\n"
  "return 0;"
  "}")
