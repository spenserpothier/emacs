;;; defaults.el --- Default settings

;;; Commentary:
;;; TAB behavior
;;; Code:
(setq tab-always-indent 'complete)
(setq-default indent-tabs-mode nil)   ; never use tabs to indent.

(use-package dashboard
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-items '((recents . 5)
                          (bookmarks . 5)
                          (projects . 5)
                          ))
  )
;; Encodings
(set-terminal-coding-system 'utf-8)	; always use UTF-8
(set-keyboard-coding-system 'utf-8)	; it is the future
(prefer-coding-system 'utf-8)

;; Whitespace
(use-package whitespace
  :config
  (add-hook 'before-save-hook 'whitespace-cleanup)
  )

;;;; *scratch* buffer
(setq initial-scratch-message nil)
(setq initial-major-mode 'org-mode)

;; Never kill, just bury
(defun dont-kill-but-bury-scratch ()
  "Don't kill but burry *scratch* buffer."
  (if (equal (buffer-name (current-buffer)) "*scratch*")
      (progn (bury-buffer) nil)
    t))
(add-hook 'kill-buffer-query-functions 'dont-kill-but-bury-scratch)

;; Misc
(show-paren-mode)

(provide 'defaults)

;;; defaults.el ends here
