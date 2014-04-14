(global-set-key (kbd "<f6>") 'compile)
(global-set-key (kbd "<f7>") (lambda () (interactive) (load "~/.emacs")))
(global-set-key (kbd "<f8>") 'znc-all)
(global-set-key (kbd "<f11>") 'tool-bar-mode)
(global-set-key (kbd "<f12>") 'menu-bar-mode)
(global-set-key (kbd "<XF86Calculator>") 'calc)
(global-set-key (kbd "<XF86Mail>") 'gnus)
(global-set-key (kbd "s-<right>") 'shrink-window-horizontally)
(global-set-key (kbd "s-<left>") 'enlarge-window-horizontally)
(global-set-key (kbd "s-<up>") 'shrink-window)
(global-set-key (kbd "s-<down>") 'enlarge-window)
(global-set-key (kbd "C-x u") 'undo-tree-visualize)
(global-set-key (kbd "C-x M-e") 'eval-and-replace)
(global-set-key (kbd "<escape>") 'god-mode-all)
(global-set-key (kbd "C-c SPC") 'ace-jump-mode)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "H-i") 'erc-foonetic)
(global-set-key (kbd "C-c <M-right>") '(lambda ()
				       (interactive)
				       (kill-region-to-window 'right)))
(global-set-key (kbd "C-c <M-left>") '(lambda ()
				      (interactive)
				      (kill-region-to-window 'left)))
(global-set-key (kbd "C-c <M-up>") '(lambda ()
				    (interactive)
				    (kill-region-to-window 'up)))

(global-set-key (kbd "C-c <M-down>") '(lambda ()
				      (interactive)
				      (kill-region-to-window 'down)))

(global-set-key (kbd "C-c <right>") '(lambda ()
				       (interactive)
				       (kill-region-to-window 'right t)))
(global-set-key (kbd "C-c <left>") '(lambda ()
				      (interactive)
				      (kill-region-to-window 'left t)))
(global-set-key (kbd "C-c <up>") '(lambda ()
				    (interactive)
				    (kill-region-to-window 'up t)))

(global-set-key (kbd "C-c <down>") '(lambda ()
				      (interactive)
				      (kill-region-to-window 'down t)))
;;enable windmove bindings
(windmove-default-keybindings)

(provide 'config-keybind)
