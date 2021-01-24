;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Jack Burns"
      user-mail-address "burnsjm3@mymail.vcu.edu")
(add-load-path! "load_path/")

(setq default-directory "/Users/jack/" )
;; Ace-Jump
;;
(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

(setq doom-theme 'doom-dracula)
;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;;(setq doom-font (font-spec :family "hack" :size 12 ))
;;(setq doom-variable-pitch-font (font-spec :family "hack" :size 13 ))
;;(setq doom-theme 'doom-gruvbox)
;;(setq doom-font (font-spec :family "Iconsolata" :size 12)
;;      doom-variable-pitch-font (font-spec :family "Iconsolata" :size 12) )
;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;;Major mode icons
(require 'mode-icons)

;;set up 'org-bullets
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; create neotree keybindig
(map! :leader
     :desc "toggle neotree"
     "o n" #'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(map! :leader
      :desc "Start eshell"
      "o e" #'eshell)
(map! :leader
      :desc "List bookmars"
      "o B" #'list-bookmarks)
;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type `relative)

(setq +doom-dashboard-banner-file
      (expand-file-name "splash-images/emacs.png" doom-private-dir))

(setq auto-mode-alist (cons '("\\.html$" . html-helper-mode) auto-mode-alist))
;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;;

;;open emacs in full screen mode
(toggle-frame-maximized)
