(require 'em-tramp)
(eval-after-load 'eshell '(setenv "CC" "gcc"))
(eshell-command "alias sudo 'eshell/sudo $*'")
(provide 'config-eshell)
