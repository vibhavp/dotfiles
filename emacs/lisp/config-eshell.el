(require 'em-tramp)
(eval-after-load 'eshell '(setenv "CC" "ccache gcc"))
(eshell-command "alias sudo 'eshell/sudo $*'")
(provide 'config-eshell)
