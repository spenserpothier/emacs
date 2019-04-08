;;; evil.el --- Settings for evil mode.
;;; Commentary:
;;; Code:
(use-package evil
        :ensure t)
(use-package powerline
        :ensure t)
(use-package powerline-evil
        :ensure t)
(use-package key-chord
        :ensure t)
(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

;; Evil mode settings
(evil-mode t)

;; Use jk as escape for evil mode
(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jk" (lambda() (interactive) (evil-normal-state) (evil-forward-char)))
(key-chord-mode 1)
;(define-key org-mode-map (kbd "C-i") 'org-cycle)
;; Powerline evilmode
(powerline-evil-vim-color-theme)
(evil-set-initial-state 'eshell-mode 'emacs)
(evil-set-initial-state 'term-mode 'emacs)
(evil-set-initial-state 'weechat-mode 'emacs)
(evil-set-initial-state 'git-timemachine-mode 'emacs)

(provide 'evil)
;;; evil.el ends here
