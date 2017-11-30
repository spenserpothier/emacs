;;; misc.el --- Other miscelanous settings I wasn't sure where to put

;;; Commentary:
;;; Code:
;; These commented packages were in my previous configuration and i have't decided if I still want/need them.
; smtpmail
; mediawiki
; sr-speedbar
; git-link
; git-messenger

(use-package git-gutter+
        :ensure t)
(use-package magit
        :ensure t)
(use-package auto-complete
        :ensure t)
(ac-config-default)

(use-package neotree
        :ensure t)
(global-set-key [f8] 'neotree-toggle)
(setq neo-window-fixed-size nil)

;; These don't load properly
;(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
;(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-enter)
;(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
;(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)

(use-package which-key
        :ensure t)
(which-key-mode)


(global-git-gutter+-mode)
(add-hook 'git-commit-mode-hook 'turn-on-flyspell)

;; Autosave settings
(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups

(provide 'misc)
;;; misc.el ends here
