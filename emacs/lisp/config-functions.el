;; enable recentf
(defun config-recentf-mode-enable ()
  (unless config-recentf-mode-enabled
    (recentf-mode 1)
    (setq recentf-max-menu-items 25)
    (setq config-recentf-mode-enabled t)))

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

;; ;; Makes sage-view typset output.
;; (defun sage-view-enable-inline-output ()
;;   "Enable inline output pretty-printing, i.e. typeset output from sage in the `inferior-sage-mode' buffer.
;; WARNING: this communicates with the sage process.  Only use this
;; when `sage-view' mode is enabled and sage is running."
;;   (interactive)
;;   (sage-send-command "sys.displayhook = sage.misc.displayhook.DisplayHook(sys.displayhook)" nil t)
;;   (sage-send-command "pretty_print_default(True)" nil t)
;;   (setq sage-view-inline-output-enabled t)
;;   (sage-view-update-modeline))

(defun load-theme-day ()
  (interactive)
  (load-theme 'solarized-light t))

(defun load-theme-night ()
  (interactive)
  (load-theme 'solarized-dark t))

(defun browse-url-youtube (url)
  (interactive "sEnter URL: ")
  (let ((command (format "livestreamer \"%s\" 240p" url)))
    (async-shell-command command (format "livestreamer \"%s\"" url))))

(provide 'config-functions)
