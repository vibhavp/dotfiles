;; -*- lexical-binding: t; -*-
(global-set-key (kbd "<f6>") 'compile)
(global-set-key (kbd "<f8>") 'znc-all) (global-set-key (kbd "<f11>") 'tool-bar-mode)
(global-set-key (kbd "<f12>") 'menu-bar-mode)
(global-set-key (kbd "<XF86Calculator>") 'calc)
(global-set-key (kbd "<XF86Mail>") 'gnus)
(global-set-key (kbd "s-<right>") 'shrink-window-horizontally)
(global-set-key (kbd "s-<left>") 'enlarge-window-horizontally)
(global-set-key (kbd "s-<up>") 'shrink-window)
(global-set-key (kbd "s-<down>") 'enlarge-window)
(global-set-key (kbd "C-x M-e") 'eval-and-replace)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
;; (global-set-key (kbd "C-M-i") 'company-complete)
;;enable windmove bindings
(windmove-default-keybindings)

(provide 'config-keybind)
