;;; python.el --- Settings for python

;;; Commentary:
;;; Code:
(setq
 python-shell-interpreter "/usr/local/bin/ipython"
 python-shell-interpreter-args "-i"
 python-shell-interpreter-args "--colors=Linux --profile=default --simple-prompt"
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
 "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code
 "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code
 "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")

(add-hook 'python-mode-hook
          (lambda ()
            (flycheck-mode)
            (editorconfig-mode)
            (setq indent-tabs-mode t)
            (setq python-indent 2)
            (setq tab-width 2))
          (tabify (point-min) (point-max)))

(provide 'python)
;;; python.el ends here
