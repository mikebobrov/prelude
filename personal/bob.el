(desktop-save-mode 1)

(require 'linum)
(global-linum-mode 1)


(prelude-require-package 'restclient)
(setq tramp-default-method "ssh")

(global-set-key (kbd "C-.") 'other-window)
;;(global-set-key (kbd "C-,") 'prev-window)
