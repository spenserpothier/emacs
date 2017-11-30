(use-package solarized-theme
  :ensure t
  :init
  (load-theme 'solarized-dark t))

(setq eshell-prompt-function
      (lambda ()
        (concat
         (propertize ((lambda (p-lst)
            (if (> (length p-lst) 3)
                (concat
                 (mapconcat (lambda (elm) (if (zerop (length elm)) ""
                                            (substring elm 0 1)))
                            (butlast p-lst 3)
                            "/")
                 "/"
                 (mapconcat (lambda (elm) elm)
                            (last p-lst 3)
                            "/"))
              (mapconcat (lambda (elm) elm)
                         p-lst
                         "/")))
          (split-string (pwd-repl-home (eshell/pwd)) "/")) 'face `(:foreground "yellow"))
         (or (curr-dir-git-branch-string (eshell/pwd)))
         (propertize "# " 'face 'default))))

(provide 'solarized-dark)