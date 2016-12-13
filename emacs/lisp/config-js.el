(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js-mode-hook 'js2-minor-mode)
(require 'flycheck)
(defun use-eslint-from-node-modules ()
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint (and root
                      (expand-file-name "node_modules/eslint/bin/eslint.js"
                                        root))))
    (if eslint
	(if (file-executable-p eslint)
	    (setq-local flycheck-javascript-eslint-executable eslint)
	  (setq-local flycheck-javascript-eslint-executable (format "node %s" eslint))))))
;;(add-hook 'js2-mode-hook 'use-eslint-from-node-modules)
(flycheck-add-mode 'javascript-eslint 'js2-mode)
(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(json-jsonlist)))

(provide 'config-js)
