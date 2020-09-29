(require 'package)
(unless (assoc-default "melpa" package-archives)
  (add-to-list 'package-archives '("melpa"
				   . "https://melpa.org/packages/")
	       t))
(unless (assoc-default "org" package-archives)
  (add-to-list 'package-archives '("org"
				   . "https://orgmode.org/elpa/")
	       t))
(package-initialize)

(unless (or (package-installed-p 'use-package)
	    (package-installed-p 'diminish))
  (package-refresh-contents)
  (package-install 'use-package)
  (package-install 'diminish))

(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

(org-babel-load-file (concat user-emacs-directory "jdr2160.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (diminish use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
