;;; writing.el --- Packages for writing better

;;; Commentary:
;;; Code:

(use-package markdown-mode
        :ensure t)
;; Currently broken with existing UI settings
;(use-package writeroom-mode
;	:ensure t)
(use-package writegood-mode
        :ensure t)

(provide 'writing)
;;; writing.el ends here
