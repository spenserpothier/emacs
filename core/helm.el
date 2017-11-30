;;; helm.el --- Settings for helm (navigation and such)

;;; Commentary:
;;; Code:
(use-package helm
        :ensure t)
(use-package helm-ls-git
        :ensure t)
(use-package helm-projectile
        :ensure t)
(use-package helm-dash
        :ensure t)

(require 'helm-config)
(helm-mode t)
(helm-projectile-on)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x r b") 'helm-bookmarks)
(global-set-key (kbd "C-x m") 'helm-M-x)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x p") 'projectile-mode)
(setq helm-dash-browser-func 'eww)

(projectile-global-mode)
(provide 'helm)
;;; helm.el ends here
