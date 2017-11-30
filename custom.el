(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-capture-templates
   (quote
    (("n" "Nordstrom Templates")
     ("nt" "ToDo Entry" entry
      (file+headline "~/Documents/org/Nordstrom.org" "Capture")
      (file "~/Documents/org/templates/tmpl-nordstrom-todo.txt")
      :empty-lines-before 1)
     ("nm" "Meeting Entry" entry
      (file+headline "~/Documents/org/Nordstrom.org" "Meetings")
      (file "~/Documents/org/templates/tmpl-nordstrom-meeting.txt")
      :empty-lines-before 1)
     ("nc" "Code ToDo Entry" entry
      (file+headline "~/Documents/org/Nordstrom.org" "To Dos")
      (file "~/Documents/org/templates/tmpl-nordstrom-code-todo.txt")
      :empty-lines-before 1)
     ("p" "Personal Templates")
     ("pt" "ToDo Entry" entry
      (file+headline "~/Documents/org/Capture.org" "Capture")
      (file "~/Documents/org/templates/tmpl-personal-todo.txt")
      :empty-lines-before 1)
     ("pm" "Music to listen to" entry
      (file+headline "~/Documents/org/organizer.org" "Music")
      (file "~/Documents/org/templates/tmpl-personal-newmusic.txt")
      :empty-lines-before 1))))
 '(package-selected-packages
   (quote
    (go-guru go-eldoc go-autocomplete go-mode use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
