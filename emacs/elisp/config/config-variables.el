;;(setq initial-buffer-choice "~/.emacs.d/todo.org")
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/texlive/2013/bin/i386-linux"))
(setq exec-path (append exec-path '("/usr/local/texlive/2013/bin/i386-linux")))
(setq doc-view-continuous t)

(provide 'config-variables)
