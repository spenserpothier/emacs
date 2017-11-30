;;; package.el --- Boostrap use-pacakge

;;; Commentary:
;;; Code:
(require 'package)

(setq package-archives
      (append package-archives
              (add-to-list 'package-archives
                           '("melpa" . "https://melpa.org/packages/")
                           '("org" . "http://orgmode.org/elpa/"))))

(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

(provide 'package)
;;; package.el ends here
