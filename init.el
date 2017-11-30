;;; init.el --- Entry point


;;; Commentary:
;;; Code:

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; home sweet home
(defun pro (filename)
  "Expand FILENAME relative to the user's Emacs dir."
  (expand-file-name filename user-emacs-directory))

;; Load core modules
(message "Loading Core Modules")
(load (pro "core/defaults"))
(load (pro "core/package"))
(load (pro "core/linux"))
(load (pro "core/osx"))
(load (pro "core/ui"))
(load (pro "core/helm"))
(load (pro "core/misc"))
(load (pro "core/evil"))

;; Load Developer Modules
(load (pro "module/dev") 'missing-ok)
(load (pro "module/go") 'missing-ok)
(load (pro "module/ruby") 'missing-ok)

;; Other Modules
(load (pro "module/writing") 'missing-ok)


;; Load Emacs Modules
(load (pro "module/org"))

;; Themes
(message "Loading Theme")
(load (pro "theme/solarized-light"))
;(load (pro "theme/solarized-dark"))

;;; init.el ends here
