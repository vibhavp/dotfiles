(require 'emms-setup)
(emms-standard)
(emms-default-players)

;;; Display information about the currently playing track
(require 'emms-mode-line)
(emms-mode-line 1)
(require 'emms-playing-time)
(emms-playing-time 1)

;;; Add playlist
(if (file-exists-p "~/.emacs.d/emms/playlist.el")
    (emms-add-playlist-file "~/.emacs.d/emms/playlist.el"))
;;; keybindings
(global-set-key (kbd "<XF86AudioRaiseVolume>") 'emms-volume-raise)
(global-set-key (kbd "<XF86AudioLowerVolume>") 'emms-volume-lower)
(global-set-key (kbd "C-x <pause>") 'emms-pause)
(global-set-key (kbd "<XF86AudioPlay>") 'emms-show)

(setq emms-player-mpg321-command-name "mpg123" 
      emms-player-list '(emms-player-mpg321 
			 emms-player-mplayer 
			 emms-player-mplayer-playlist))
