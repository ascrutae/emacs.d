;; helm configuration
;; enable fuzzy matching
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)
;;
;; helm key-binding
;;
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(global-set-key (kbd "C-c /") #'helm-find-files)
(global-set-key (kbd "C-x b") #'helm-mini)
;;(global-set-key (kbd "C-x k") #'helm-mini)
(global-set-key (kbd "C-x C-b") #'helm-mini)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

(with-eval-after-load 'helm
  (define-key helm-map (kbd "C-c p") 'ignore)
  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
  (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
  (define-key helm-map (kbd "C-z")  'helm-select-action))




(provide 'init-helm)
