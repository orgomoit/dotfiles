;; set default font
(set-face-attribute 'default nil :font "Iosevka Comfy-11")
(set-face-attribute 'fixed-pitch nil :family "Iosevka Comfy" :height 1.0)
(set-face-attribute 'variable-pitch nil :family "Iosevka Comfy" :height 1.0)

;; set default theme (trying ef-themes)
(require 'ef-themes)
(setq ef-themes-to-toggle '(ef-summer ef-winter))
(mapc #'disable-theme custom-enabled-themes)
(load-theme 'ef-winter :no-confirm)

;; disable menu bar, tool bar, and scroll bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; enable line highlighting
(global-hl-line-mode 1)

;; enable line numbering
(display-line-numbers-mode 1)
(setq display-line-numbers 't)
(add-hook 'emacs-lisp-mode-hook 'display-line-numbers-mode)
(add-hook 'python-mode-hook 'display-line-numbers-mode)
(add-hook 'c++-mode-hook 'display-line-numbers-mode)
(add-hook 'tex-mode-hook 'display-line-numbers-mode)

;; install MELPA repository
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; enable tree-sitter and tree-sitter-langs
(require 'tree-sitter)
(require 'tree-sitter-langs)
(global-tree-sitter-mode)
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(tree-sitter-langs tree-sitter ef-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
