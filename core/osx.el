;;; osx.el --- Settings for OSX

;;; Commentary:
;;; Code:
;; Cocoa stuffs
; Doesn't work right with dual monitors
; (defun xjdr/configure-cocoa ()
;   ;; open up maximized-ish
;   (let ((px (display-pixel-width))
;         (py (display-pixel-height))
;         (fx (frame-char-width))
;         (fy (frame-char-height))
;         tx ty)
;     (setq tx (- (/ px fx) 7))
;     (setq ty (- (/ py fy) 4))
;     (setq initial-frame-alist '((top . 2) (left . 2)))
;     (add-to-list 'default-frame-alist (cons 'width tx))
;     (add-to-list 'default-frame-alist (cons 'height ty)))

;   ;; don't scroll like a maniac
;   (setq mouse-wheel-scroll-amount '(1))
;   (setq mouse-wheel-progressive-speed nil))
; (if (memq window-system '(mac ns)) (xjdr/configure-cocoa))

;; Keyboard
(when (string= system-type "darwin")
  (setq mac-option-modifier 'meta
        mac-command-modifier 'super
        delete-by-moving-to-trash t
        trash-directory (expand-file-name ".Trash" (getenv "HOME"))))

(provide 'osx)
;;; osx.el ends here
