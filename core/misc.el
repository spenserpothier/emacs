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
  :ensure t
  :config
  (global-git-gutter+-mode)
  )
(use-package magit
        :ensure t)
(use-package company
  :ensure t
  :config
  (add-hook 'after-init-hook 'global-company-mode))

(use-package neotree
  :ensure t
  :config
  (global-set-key [f8] 'neotree-toggle)
  )

(setq neo-window-fixed-size nil)

;; These don't load properly
;(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
;(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-enter)
;(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
;(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)

(use-package which-key
  :ensure t
  :config
  (which-key-mode)
  )
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

(use-package gist
  :ensure t)
;(use-package yasnippet
;  :ensure t
;  :config
;  (setq yas-snippet-dirs (append yas-snippet-dirs
;                                 '("~/.emacs.d/mysnippets/")))
;  (require 'company-yasnippet)
;  (defun check-expansion ()
;    (save-excursion
;      (if (looking-at "\\_>") t
;        (backward-char 1)
;        (if (looking-at "\\.") t
;          (backward-char 1)
;          (if (looking-at "->") t nil)))))
;
;  (defun do-yas-expand ()
;    (let ((yas/fallback-behavior 'return-nil))
;      (yas/expand)))
;
;  (defun tab-indent-or-complete ()
;    (interactive)
;    (if (minibufferp)
;        (minibuffer-complete)
;      (if (or (not yas/minor-mode)
;              (null (do-yas-expand)))
;          (if (check-expansion)
;              (company-complete-common)
;            (indent-for-tab-command)))))
;  (add-hook 'magit-mode-hook (lambda () (yas-minor-mode -1)))
;  )
;
;  (global-set-key [tab] 'tab-indent-or-complete)
;(use-package gitlab
;  :ensure t
;  :config
;  (setq gitlab-host "https://gitlab.nordstrom.com"
;        gitlab-token-id "")
;  )
(provide 'misc)
;;; misc.el ends here
