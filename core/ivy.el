;;; ivy.el --- Settings for helm (navigation and such)

;;; Commentary:
;;; Code:
(use-package counsel
  :ensure t)

(use-package ivy :demand
  :config
  (setq ivy-use-virtual-buffers t
        ivy-count-format "%d/%d "))
(use-package counsel-dash
  :ensure t)

(use-package counsel-projectile
  :ensure t)

(ivy-mode 1)
(projectile-global-mode)
(provide 'ivy)
;;; ivy.el ends here
