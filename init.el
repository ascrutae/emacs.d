;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq user-full-name "Xin Zhang"
      user-mail-address "zhangxin@apache.org")

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;;
;; init elpa
;;
(require 'init-melpa)
(setq package-list '(auto-package-update
		     org
		     ;;helm
		     projectile
		     counsel-projectile
		     use-package
		     spacemacs-theme
		     auto-complete
		     ivy
		     counsel
		     yaml-mode
		     magit
		     pip-requirements))
;; DONOT generate back up files
(setq make-backup-files nil)

(require 'init-env)
(require 'init-eshell)
(require 'init-packages)
;;(require 'init-helm)
(require 'init-ivy)
(require 'init-theme)
(require 'init-electric-pair)
(require 'init-autocomplete)
(require 'init-org)
(require 'init-magit)
(require 'init-projectile)
(require 'init-yaml)
(require 'init-python)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files '("~/.org-gtd/plain-life.org") t)
 '(package-selected-packages
   '(counsel-projectile projectile use-package spacemacs-theme pkg-info org magit helm exec-path-from-shell counsel base16-theme auto-package-update auto-complete)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
