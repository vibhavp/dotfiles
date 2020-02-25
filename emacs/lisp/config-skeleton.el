;; -*- lexical-binding: t; -*-

(define-skeleton skel-latex-basic
  "Basic LaTeX skeleton."
  nil
  "\\documentclass[a4paper]{article}\n"
  "\\usepackage{mathtools}\n"
  "\\begin{document}\n\n"
  "\\end{document}\n")

(provide 'config-skeleton)
