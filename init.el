(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
	                 ("elpa" . "https://elpa.gnu/packages/")))
(package-initialize)

(setq make-backup-files nil
    auto-save-default nil
create-lockfiles nil)

(setq frame-title-format nil)
;; Question
(fset 'yes-or-no-p 'y-or-n-p)
(setq confirmation-kill-emacs nil)
;;Give some breathing room
(set-fringe-mode 0)
(setq-default toggle-truncate-lines nil)
 ;;(add-to-list 'default-frame-alist '(fullscreen . maximized))
 ;;(toggle-frame-fullscreen)

(global-set-key (kbd "M-p") 'previous-line)
(global-set-key (kbd "M-n") 'next-line)
(global-set-key (kbd "C-q") 'query-replace)
(global-set-key (kbd "C-c c") 'comment-line)

(setq ring-bell-function 'ignore
      inhibit-startup-message t
      inhibit-splash-screen t
      initial-scratch-message "")

;; disable the toolbar
(tool-bar-mode -1)
;; disable visible scroolbar
(scroll-bar-mode -1)
;; batery
(display-battery-mode t)
(column-number-mode -1)

(require 'use-package)
(setq use-package-always-ensure t)

(use-package ivy
     ;;:diminish
       :init
	 (ivy-mode 1)
	 :bind(("C-s" . swiper)
	     ("C-x b" . counsel-switch-buffer)
	     :map ivy-minibuffer-map
	     ("TAB" . ivy-alt-done)
	     ("M-j" . ivy-next-line)
	     ("M-k" . ivy-previous-line)
	     ("C-d" . ivy-switch-buffer-kill))
	 :custom
	 (ivy-use-virtual-buffers t)
	 (ivy-truncate-lines t)
	 (ivy-wrap t)
	 (ivy-use-selectable-prompt t)
	 (ivy-count-format "[%d/%d]")
	 (enable-recursive-minibuffers t))

    (use-package counsel
       ;; :diminish
     :after ivy
     :bind
     (("C-x f" . counsel-recentf))
     :config(counsel-mode 1))

(use-package swiper
 ;; :diminish
 :after ivy)

(use-package ivy-posframe)
;; :diminish
 :after ivy
 :custom
 (ivy-posframe-width 70)
 (ivy-posframe-height 15)
 (ivy-posframe-border-width 2)
 :config
 (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-top-center)))
 (ivy-posframe-mode 1)

;; (require 'use-package)
;; (setq use-package-always-ensure t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(ace-window ace-windows ivy-posframe counsel use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
