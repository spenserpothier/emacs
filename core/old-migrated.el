;; List of packages

;'evil
;'powerline
;'powerline-evil
;'auto-complete
;'key-chord
;'helm
;'helm-ls-git
;'projectile
;'helm-projectile
;'org-bullets
;'org-beautify-theme
;'git-gutter+
;'magit
'smtpmail
;;'robe
;;'inf-ruby
'ledger-mode
;;'ruby-mode
;;'rubocop
'org-trello
;'markdown-mode
;'writeroom-mode
'mediawiki
'sr-speedbar
;;'rbenv
;;'rspec-mode
;;'go-mode
;;'go-autocomplete
;;'go-eldoc
;;'go-guru
;'yaml-mode
;'neotree
;;'writegood-mode
;'flycheck
'git-link
'git-messenger
;'helm-dash
'org-trello
;'which-key

;; Evil mode settings
;(evil-mode t);

;;; Use jk as escape for evil mode
;(setq key-chord-two-keys-delay 0.5)
;(key-chord-define evil-insert-state-map "jk" (lambda() (interactive) (evil-normal-state) (evil-forward-char)))
;(key-chord-mode 1)
;(define-key org-mode-map (kbd "C-i") 'org-cycle)
;;; Powerline evilmode
;(powerline-evil-vim-color-theme)
;(evil-set-initial-state 'eshell-mode 'emacs)
;(evil-set-initial-state 'term-mode 'emacs)
;(evil-set-initial-state 'weechat-mode 'emacs)
;(evil-set-initial-state 'git-timemachine-mode 'emacs)



;; Autosave settings
;(setq
;   backup-by-copying t      ; don't clobber symlinks
;   backup-directory-alist
;    '(("." . "~/.saves"))    ; don't litter my fs tree
;   delete-old-versions t
;   kept-new-versions 6
;   kept-old-versions 2
;   version-control t)       ; use versioned backups


;; Autocomplete settings
;(ac-config-default)

;; GitGutter+
;(global-git-gutter+-mode)

;; Helm settings 
;(require 'helm-config)
;(helm-mode t)
;(helm-projectile-on)
;(global-set-key (kbd "C-x b") 'helm-buffers-list)
;(global-set-key (kbd "C-x r b") 'helm-bookmarks)
;(global-set-key (kbd "C-x m") 'helm-M-x)
;(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
;(global-set-key (kbd "C-x C-f") 'helm-find-files)
;(projectile-global-mode)
;(global-set-key (kbd "C-x p") 'projectile-mode)

;; Dash settings
;(setq helm-dash-browser-func 'eww)

;; Org settings



;; Neotree Settings
;(global-set-key [f8] 'neotree-toggle)
;(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
;(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-enter)
;(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
;(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
;(setq neo-window-fixed-size nil)

;; Ledger Mode
;(autoload 'ledger-mode "ledger-mode" "A major mode for Ledger" t)
;(add-to-list 'load-path
;             (expand-file-name "/path/to/ledger/source/lisp/"))
;(add-to-list 'auto-mode-alist '("\\.ledger$" . ledger-mode))


;; Git Settings
;(add-hook 'git-commit-mode-hook 'turn-on-flyspell)

;; YAML Settings
;(add-hook 'yaml-mode 'flycheck-mode)
