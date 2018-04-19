;;; web.el --- Web Development settings

;;; Commentary:
;;; Code:
(use-package web-mode
  :ensure t
  :config
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-enable-auto-pairing t)
  )
(use-package restclient
  :ensure t)

(provide 'web)

;;; web.el ends here
