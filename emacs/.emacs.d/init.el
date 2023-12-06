;; set default font
(add-to-list 'default-frame-alist
	     '(font . "Iosevka Comfy-11"))

;; set default theme (trying ef-themes)
(require 'ef-themes)
(setq ef-themes-to-toggle '(ef-summer ef-winter))
(mapc #'disable-theme custom-enabled-themes)
(load-theme 'ef-winter :no-confirm)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(ef-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
