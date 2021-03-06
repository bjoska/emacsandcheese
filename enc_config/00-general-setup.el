;; Store away the custom-set-* variables in a file called settings.
;; Creates the file if it doesn't exist.
(defvar custom-set-file (expand-file-name ".custom-set/settings.el" user-emacs-directory))
(if (file-exists-p custom-set-file)
    nil
  (write-region
   ";; DON'T MODIFY THIS FILE UNLESS YOU KNOW THINGS" nil custom-set-file))

(when (file-exists-p custom-set-file)
  (setq custom-file custom-set-file)
  (load custom-file))

;; To get rid of Weird color escape sequences in Emacs.
;; Instruct Emacs to use emacs term-info not system term info
;; http://stackoverflow.com/questions/8918910/weird-character-zsh-in-emacs-terminal
(setq system-uses-terminfo nil)

(windmove-default-keybindings)
(prefer-coding-system 'utf-8)
(menu-bar-mode 0)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq x-select-enable-clipboard t)
(setq inhibit-startup-message t)
(global-auto-revert-mode t)
(global-linum-mode 1)
(global-set-key (kbd "M-ö") 'comment-dwim)
(global-set-key (kbd "<escape>") 'hippie-expand)
(global-undo-tree-mode)

(put 'dired-find-alternate-file 'disabled nil)
(setq-default truncate-lines t)

;; Do not use tabs for indentation.
(setq-default indent-tabs-mode nil)

;; Enable whitespace-mode for all buffers.
(global-whitespace-mode 1)
(setq whitespace-style '(face tabs trailing empty))

(load-theme 'sanityinc-tomorrow-eighties t)

(setq backup-by-copying t
      backup-directory-alist '(("." . "~/.emacs.d/.saves"))
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

(setq auto-save-file-name-transforms
      `((".*", temporary-file-directory t)))

(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

;; Show the current function name in the header line
(which-function-mode)
(setq-default header-line-format
              '((which-func-mode ("" which-func-format " "))))
(setq mode-line-misc-info
      ;; We remove Which Function Mode from the mode line, because it's mostly
      ;; invisible here anyway.
      (assq-delete-all 'which-func-mode mode-line-misc-info))

;; Define a key binding for isearchb.
(define-key global-map [(control ?q)] 'isearchb-activate)

;; Add VLF(Very Large File)-mode as a choice when opening large files
(require 'vlf-setup)

;; Set to prevent Magit from telling me that something has changed as
;; I have seen it.
(setq magit-last-seen-setup-instructions "1.4.0")
