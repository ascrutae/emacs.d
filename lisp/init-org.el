;; binding key
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c a") 'org-agenda)
;; environment setting
(setq org-log-done 'time)
(setq org-log-into-drawer t)
(setq org-log-state-notes-insert-after-drawers nil)
;;(setq org-default-notes-file (concat org-directory "plain-life.org"))
;;(setq org-agenda-files ((concat org-directory "plain-life.org")))
;;(setq org-agenda-files (file-expand-wildcards (concat org-directory "plain-life.org")))
(setq org-refile-use-outline-path t)
(setq org-outline-path-complete-in-steps nil)
;; todo key words
(setq org-todo-keywords
      (quote ((sequence "INBOX(i)")
	      (sequence "ARCHIVE(a)")
	      (sequence "TODO(t)" "NEXT(n)" "|" "DONE(d!/!)")
              (sequence "PROJECT(p)" "|" "DONE(d!/!)" "CANCELLED(c@/!)")
              (sequence "WAITING(w@/!)" "DELEGATED(e!)" "HOLD(h)" "|" "CANCELLED(c@/!)")))
      org-todo-repeat-to-state "NEXT")
;; capture templates
;;(setq org-capture-templates
;;      `(("i" "inbox" entry (file "~/.org-gtd/plain-life.org")
;;         "* INBOX %?\n  %U\n" :clock-resume t)
;;	("t" "todo" entry (file "~/.org-gtd/plain-life.org")
;;         "* TODO %?\n  %U\n%a\n" :clock-resume t)
;;	("n" "next" entry (file "~/.org-gtd/plain-life.org")
;;        "* NEXT %?\n  %U\n%a\n" :clock-resume t)))
;;; Refiling
(setq org-refile-use-cache nil)
(setq org-refile-use-outline-path t)
(setq org-outline-path-complete-in-steps nil)
;; Targets include this file and any file contributing to the agenda - up to 5 levels deep
(setq org-refile-targets '((nil :maxlevel . 5) (org-agenda-files :maxlevel . 5)))
(defadvice org-refile (after sanityinc/save-all-after-refile activate)
  "Save all org buffers after each refile operation."
  (org-save-all-org-buffers))

(setq org-agenda-compact-blocks t
      org-agenda-sticky t
      org-tags-match-list-sublevels 'indented
      org-agenda-custom-commands
      '(
	("r" "running-road"
	 ((agenda nil)
	  (todo "NEXT"
		((org-agenda-overriding-header "Running-road")
		 (org-agenda-prefix-format "")))
	  (todo "ARCHIVE"
		((org-agenda-overriding-header "Archive")
		 (org-agenda-prefix-format "")))
	  (todo "DELEGATE"
		((org-agenda-overriding-header "Delegate")
		 (org-agenda-prefix-format "")))
	  (todo "HOLD"
		((org-agenda-overriding-header "Hold")
		 (org-agenda-prefix-format "")))
	  ))
	("g" "life-manage"
	 (
	  (todo "INBOX"
		((org-agenda-overriding-header "Inbox")
		 (org-agenda-prefix-format "")
		 (org-tags-match-list-sublevels t)))
	  (tags "ONE"
		((org-agenda-overriding-header "one thousand")
		 (org-agenda-prefix-format "%l")
		 (org-tags-match-list-sublevels t)
		 (org-agenda-tags-todo-honor-ignore-options t)))
	  (tags "TWO"
		((org-agenda-overriding-header "two thousand")
		 (org-agenda-prefix-format "%l")
		 (org-agenda-todo-keyword-format "%-0s")
		 (org-tags-match-list-sublevels t)))
	  (tags "THREE"
		((org-agenda-overriding-header "three thousand")
		 (org-agenda-prefix-format "%l")
		 (org-tags-match-list-sublevels t)
		 (org-agenda-tags-todo-honor-ignore-options t)))
	  (tags "FOUR"
		((org-agenda-overriding-header "four thousand")
		 (org-agenda-prefix-format "%l")
		 (org-tags-match-list-sublevels t)
		 (org-agenda-tags-todo-honor-ignore-options t)))
	  (tags "FIVE"
		((org-agenda-overriding-header "five thousand")
		 (org-agenda-prefix-format "%l")
		 (org-tags-match-list-sublevels t)
		 (org-agenda-tags-todo-honor-ignore-options t)))
	  ))
	))


(provide 'init-org)
