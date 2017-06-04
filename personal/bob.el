(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(desktop-save-mode 1)

(require 'linum)
(global-linum-mode 1)



(prelude-require-package 'restclient)
(prelude-require-package 'switch-window)
;; (prelude-require-package 'robe)
;; (prelude-require-package 'helm-robe)
(prelude-require-package 'ggtags)
(prelude-require-package 'multiple-cursors)
(prelude-require-package 'plantuml-mode)

(setq tramp-default-method "ssh")

(global-set-key (kbd "C-.") 'other-window)
(global-set-key (kbd "C-x o") 'switch-window)
;;(global-set-key (kbd "C-,") 'prev-window)
(setq tab-width 4)
;; (setq default-tab-width 4)
;; (customize-variable (quote tab-stop-list))
;; (custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; '(tab-stop-list (quote (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))))


;; (add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'ruby-mode-hook ( lambda() (ggtags-mode 1)))

(set-face-attribute 'default nil :height 130 :font "Operator Mono")
(set-frame-font "Operator Mono" nil t)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
