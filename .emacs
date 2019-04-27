(package-initialize)

(global-linum-mode t)

;; Use 2 spaces for auto indent
;;(setq c-default-style "linux"
;;          c-basic-offset 2)
;; Set column-mode to always be on
;;(setq column-number-mode t)

;; No startup message
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;; Have your emacs window to always show your system-name and the full
;; path of the buffer your currently editing :
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
     '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;; Hide menu bar
;;(menu-bar-mode 0)

;; Hide toolbar
(tool-bar-mode 0)

;; Defalut font
(set-frame-font "Ubuntu Mono Nerd Font 11" nil t)

;; Start in maximized mode
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;;Add MELPA Repository
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;;Remap M-x for smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;Replace selected text by typing
(delete-selection-mode 1)

;;Appearance
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(custom-safe-themes
   (quote
    ("89336ca71dae5068c165d932418a368a394848c3b8881b2f96807405d8c6b5b6" default)))
 '(frame-brackground-mode (quote dark))
 '(package-selected-packages (quote (gruber-darker-theme smex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(cua-mode t)
