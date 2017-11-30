;;; go.el --- Golang settings

;;; Commentary:
;;; Code:
(use-package go-mode
  :ensure t)
(use-package go-autocomplete
  :ensure t)
(use-package go-eldoc
  :ensure t)
(use-package go-guru
  :ensure t)

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

(defun auto-complete-for-go ()
  (auto-complete-mode 1))
  (add-hook 'go-mode-hook 'auto-complete-for-go)
(with-eval-after-load 'go-mode
   (require 'go-autocomplete))

(defun go-mode-setup ()
  (go-eldoc-setup))

(add-hook 'go-mode-hook 'go-mode-setup)

(provide 'go)
;;; go.el ends here
