(require 'package)
(toggle-debug-on-error)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(blink-cursor-mode -1)

(setq inhibit-startup-screen t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(eyebrowse org use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Turn on column number mode
(column-number-mode t)

;; Turn Yes or No into y or n
(defalias 'yes-or-no-p 'y-or-n-p)

;; Set C-c C-c to compile
(global-set-key (kbd "C-c c") 'compile)

;; C mode setup

;; eyebrowse mode
(eyebrowse-mode t)

;; ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; run build.sh
(global-set-key (kbd "M-m") (shell-command "./build.sh"))

;; quickly open init file
(global-set-key (kbd "M-e") (lambda () (interactive) (find-file user-init-file)))

;; quickly open org notes
(global-set-key (kbd "M-n") (lambda () (interactive) (find-file "~/org/notes.org")))
