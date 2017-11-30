;;; ruby.el --- Settings for Ruby

;;; Commentary:
;;; Code:


(use-package robe
        :ensure t)
(use-package inf-ruby
        :ensure t)
(use-package rubocop
        :ensure t)
(use-package rbenv
        :ensure t)
(use-package rspec-mode
        :ensure t)
(use-package ruby-mode
        :ensure t)

(global-rbenv-mode)
(add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'robe-mode-hook 'ac-robe-setup)

(provide 'ruby)
;;; ruby.el ends here
