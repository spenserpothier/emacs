;;; dev.el --- Basic development packages

;;; Commentary:
;;; Code:

(defun spell-check-and-wrap-at-80 ()
  "Enable three minor modes for neat text."
  (flyspell-mode)
  (auto-fill-mode)
  (set-fill-column 80))

;; Packages
(use-package ag
  :ensure t
  :defer t
  :config
  (setq ag-highlight-search t))

; (use-package editorconfig
;   :ensure t)

(use-package flycheck
  :ensure t
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode))

(use-package guru-mode
  :ensure t
  :init
  (add-hook 'prog-mode-hook 'guru-mode)
  )

(use-package json-mode
  :ensure t)

(use-package magit
  :ensure t
  :bind ("C-c g" . magit-status)
  :init
  (add-hook 'git-commit-mode-hook 'spell-check-and-wrap-at-80)
)

(use-package markdown-mode
  :ensure t
  :init
  (add-hook 'markdown-mode-hook 'spell-check-and-wrap-at-80)
  )

(use-package projectile
  :ensure t
  :diminish projectile-mode
  :init
  (setq projectile-enable-caching t
        projectile-cache-file (pro "var/projectile.cache")
        projectile-known-projects-file (pro "var/projectile-bookmarks.eld")))

; (use-package rainbow-delimiters
;   :ensure t
;   :defer t
;   :init
;   (progn
;     (add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)))

(use-package yaml-mode
  :ensure t)
(add-hook 'yaml-mode 'flycheck-mode)

;; Compiler
;; colorize the output of the compilation mode.
(require 'ansi-color)
(defun colorize-compilation-buffer ()
  (toggle-read-only)
  (ansi-color-apply-on-region (point-min) (point-max))
  (while (re-search-forward "�\\[2K�\\[0G" nil t)
    (progn
      (replace-match "
")))
  (toggle-read-only))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

;;;; Tramp is good
(require 'tramp)
(setq tramp-default-method "ssh")
(setq tramp-persistency-file-name (pro "var/tramp-history.el"))


(provide 'dev)
;;; dev.el ends here
