(defun pytidy-whole-buffer ()
  (interactive)
  (let ((a (point)))
    (shell-command-on-region (point-min) (point-max) "/home/vibhav/.emacs.d/personal/prettyprint.py" t)
    (goto-char a)))

;;https://github.com/magnars/.emacs.d/blob/master/defuns/lisp-defuns.el
(defun eval-and-replace ()
  "Replace the preceding sexp with its value."
  (interactive)
  (backward-kill-sexp)
  (condition-case nil
      (prin1 (eval (read (current-kill 0)))
             (current-buffer))
    (error (message "Invalid expression")
           (insert (current-kill 0)))))

(defun eval-and-append ()
  "Append the preceding sexp's value in a newline"
  (interactive)
  (let ((end (point))
	(start nil))
    (backward-sexp)
    (setq start (point))
    (goto-char end)
    (eval-and-replace)
    (goto-char start)
    (yank)
    (insert "\n")))

(defun kill-region-to-window (window &optional keep-text)
  "Move region to the WINDOW '(left|right|up|down) to the current window.
If KEEP-TEXT is t, dont delete the selcted region"
  (let ((text (buffer-substring-no-properties (region-beginning) (region-end))))
    (unless keep-text
      (delete-region (region-beginning) (region-end)))
    (condition-case nil
	(cond
	 ((eq window 'up)
	  (windmove-up))
	 ((eq window 'down)
	  (windmove-down))
	 ((eq window 'left)
	  (windmove-left))
	 (t (windmove-right)))
      (error (insert text)))
    (let ((start (point)))
      (insert text)
      (goto-char start))))

(defun erc-foonetic ()
  (interactive)
  (erc-tls :server "irc.foonetic.net" :port 7001 :nick "vibhavp" :full-name "Vibhav Pant"))

(provide 'config-functions)
