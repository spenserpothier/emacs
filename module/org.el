;;; org.el --- Org-mode settings

;;; Commentary:
;;; Code:
; In previous configuration, want to learn more about config before using again
;(use-package org-trello
;   :ensure t)

(use-package org-bullets
   :ensure t)
(when (eq window-system nil)
  (use-package org-beautify-theme
   :ensure t))
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (python . t)
   (ruby . t)
   (shell . t)
   (plantuml . t)
   ))
(setq org-plantuml-jar-path "/usr/share/plantuml/plantuml.jar")
(setq org-src-preserve-indentation t)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\)$" . org-mode))
(setq org-agenda-files (file-expand-wildcards "~/Documents/org/*.org"))

(setq org-return-follows-link t)
(setq org-directory "~/Documents/org")
(setq org-default-notes-file "~/Documents/org/refile.org")
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))
(setq org-refile-use-outline-path t)
(setq org-refile-allow-creating-parents-nodes (quote confirm))

(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)

;; Do not dim blocked tasks
(setq org-agenda-dim-blocked-tasks nil)
;; Compact the block agenda view
(setq org-agenda-compact-blocks t)
;; Custom agenda command definitions
(setq org-agenda-custom-commands
      '(("W" "Weekly Review"
         ((agenda "" nil)
         (stuck "")
         (todo "PROJECT")
         (todo "MAYBE")
         (todo "WAITING")
         (tags "REFILE")))
        ))

;; Capture Templates
(custom-set-variables
'(org-capture-templates
(quote (

("n" "Nordstrom Templates")
("nt" "ToDo Entry" entry (file+headline "~/Documents/org/Nordstrom.org" "Capture") (file "~/Documents/org/templates/tmpl-nordstrom-todo.txt") :empty-lines-before 1)
("nm" "Meeting Entry" entry (file+headline "~/Documents/org/Nordstrom.org" "Meetings") (file "~/Documents/org/templates/tmpl-nordstrom-meeting.txt") :empty-lines-before 1)
("nc" "Code ToDo Entry" entry (file+headline "~/Documents/org/Nordstrom.org" "To Dos") (file "~/Documents/org/templates/tmpl-nordstrom-code-todo.txt") :empty-lines-before 1)

("p" "Personal Templates")
("pt" "ToDo Entry" entry (file+headline "~/Documents/org/Capture.org" "Capture") (file "~/Documents/org/templates/tmpl-personal-todo.txt") :empty-lines-before 1)
("pm" "Music to listen to" entry (file+headline "~/Documents/org/organizer.org" "Music") (file "~/Documents/org/templates/tmpl-personal-newmusic.txt") :empty-lines-before 1)
))))

;; Org Status Logging
(setq org-log-done 'time)
(setq org-log-reschedule 'time)
(setq org-log-into-drawer "LOGBOOK")

(provide 'org)
;;; org.el ends here
