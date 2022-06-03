;; -*- lexical-binding: t; -*-
(use-package docker
  :ensure t
  :commands (docker))

(use-package lsp-dockerfile
  :demand t
  :hook ((dockerfile-mode . lsp-deferred))
  :after (lsp-mode lsp-lens)
  :init
  (setq lsp-dockerfile-language-server-command '("npx" "--yes" "dockerfile-language-server-nodejs" "--stdio"))
  :ensure lsp-mode)

(use-package kubernetes
  :ensure t
  :init
  (defmacro kubernetes-utils--save-window-state (&rest body)
  "Restore window state after executing BODY.

This is useful if the buffer is erased and repopulated in BODY,
in which case `save-excursion' is insufficient to restore the
window state."
  `(let ((pos (point))
         (col (current-column))
         (window-start-line (window-start))
         (inhibit-redisplay t))
     (save-excursion
       ,@body)
     (goto-char pos)
     (move-to-column col)
     (set-window-start (selected-window) window-start-line)))
  :commands (kubernetes-overview)
  :config
  (setq kubernetes-poll-frequency 3600
        kubernetes-redraw-frequency 3600))

(provide 'config-docker)
