;;; go.el --- Golang settings

;;; Commentary:
;;; Code:
(use-package go-projectile
    :ensure t)

(use-package go-dlv
  :ensure t)

(use-package go-gopath
  :ensure t)

(use-package go-mode
  :ensure t
  :init
  (unbind-key "C-c C-j" go-mode-map)
  :config
(setq go-tab-width 2)
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save)
  (add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode)))

(use-package go-impl
  :ensure t
  :after go-mode)

(use-package go-eldoc
  :ensure t
  :after go-mode
  :config
  (if (file-exists-p (concat (projectile-project-root) "go.mod"))
      (setq go-eldoc-gocode "~/source/go/bin/gocode-gomod")
    (setq go-eldoc-gocode "~/source/go/bin/gocode"))
  (add-hook 'go-mode-hook 'go-eldoc-setup))

(use-package go-guru
  :ensure t
  :after go-mode
  :config
  (add-hook 'go-mode-hook #'go-guru-hl-identifier-mode))

(use-package go-add-tags
  :ensure t
  :config
  (define-key go-mode-map (kbd "C-c m t") #'go-add-tags))

(use-package eglot
  :ensure t
  :config
  (add-hook 'go-mode-hook 'eglot-ensure))

(use-package eldoc-box
  :ensure t
  :config
  (eldoc-box-hover-mode 1)
  (eldoc-box-hover-at-point-mode 1)
  (add-hook 'eglot--managed-mode-hook #'eldoc-box-hover-mode t)
  (add-hook 'eglot--managed-mode-hook #'eldoc-box-hover-at-point-mode t))

(use-package company-lsp
  :ensure t
  :config
  (push 'company-lsp company-backends))

(use-package lsp-go
  :ensure t
  :after go-mode
  :config
  (setq lsp-clients-go-server "~/source/go/bin/go-langserver"))

(use-package company-go
  :ensure t
  :after go-mode
  :config
  (setq company-idle-delay .1)
  (setq company-tooltip-limit 20)
  (setq company-tooltip-align-annotations t
        company-go-show-annotation t
        )
  (add-hook 'go-mode-hook (lambda ()
                            (set(make-local-variable 'company-backends) '(company-go company-lsp))
                            (company-mode))))
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (replace-regexp-in-string
                          "[ \t\n]*$"
                          ""
                          (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq eshell-path-env path-from-shell) ; for eshell users
    (setq exec-path (split-string path-from-shell path-separator))))

(when window-system (set-exec-path-from-shell-PATH))

(setenv "GOPATH" "/Users/x3iu/source/go")

(add-to-list 'exec-path "/Users/x3iu/source/go/bin")

(defun my-go-mode-hook ()
  ; Use goimports instead of go-fmt
  (setq gofmt-command "goimports")

  ; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; Godef jump key binding
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-*") 'pop-tag-mark)
  )
(add-hook 'go-mode-hook 'my-go-mode-hook)



;(defun auto-complete-for-go ()
;  (auto-complete-mode 1))
;  (add-hook 'go-mode-hook 'auto-complete-for-go)
;(with-eval-after-load 'go-mode
;   (require 'go-autocomplete))

(defun go-mode-setup ()
  (go-eldoc-setup))

(add-hook 'go-mode-hook 'go-mode-setup)

(provide 'go)
;;; go.el ends here
