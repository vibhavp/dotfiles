;;(setq initial-buffer-choice "~/.emacs.d/todo.org")
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/texlive/2014/bin/x86_64-linux"))
(setq exec-path (append exec-path '("/usr/local/texlive/2014/bin/x86_64-linux")))
(setq doc-view-continuous t)
(setq vc-follow-symlinks t)

(provide 'config-variables)
