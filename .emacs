(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(current-language-environment "UTF-8")
 '(column-number-mode t)
 '(default-input-method "russian-computer")
 '(display-time-mode t)
 '(font-use-system-font t)
 '(inhibit-startup-screen t)
 '(jabber-vcard-avatars-retrieve nil)
 '(show-paren-mode t))

(setq inhibit-startup-message t) ;;не показывать сообщение при старте

(setq default-tab-width 4)

(fset 'yes-or-no-p 'y-or-n-p) ;;не заставляйте меня печатать yes целиком :)

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 158 :width normal :foundry "unknown" :family "Droid Sans Mono")))))

;; Emacs-org-mode
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;; Hide toolbar
(tool-bar-mode nil)

;; ISpell check
(global-set-key [f11] 'ispell-buffer)
(global-set-key [f12] 'flyspell-mode)

;; Set autoload dir
(add-to-list 'load-path "~/emacs.d")
(add-to-list 'load-path "~/.emacs.d")

;; jabber.el
;; adjust this path:
(add-to-list 'load-path "~/.emacs.d/emacs-jabber-0.8.0")
;; For 0.7.90 and above:
(require 'jabber-autoloads)
;; account settings
(setq jabber-username "drakmail" ;; notice: leave off the @gmail.com
      jabber-server "xyec.us"     ;; this is a part of your user ID, not a part of the server you will connect to.
      jabber-network-server "xyec.us"  ;; this is the actual server to connect to
      jabber-connection-type 'ssl)
;;(jabber-connect "drakmail" "xyec.us" "jabber.el")

(add-hook 'jabber-chat-mode-hook 'flyspell-mode)

;;(require 'color-theme)
;;(color-theme-charcoal-black)

;;PHP
(require 'php-mode)
(require 'php-electric)

(global-set-key [?\C-z] 'shell) ;;Shell
(global-set-key [?\C-x ?\C-g] 'goto-line)
(global-set-key [?\C-x ?\C-b] 'ibuffer)

;; Snipplets
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/snippets")

;; Calendar
(display-time)
(add-hook 'diary-hook 'appt-make-list)
(diary 0)
