(use-package beacon :ensure t :config (setq beacon-color "#6479AB"))
(beacon-mode 1)

(set-cursor-color "#ffffff")

;(set-default-font "-*-Source Code Pro for Powerline-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1")
(set-default-font "-*-Inconsolata for Powerline-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1")
(set-face-attribute 'default nil :height 190)

;(use-package darktooth-theme       :ensure t                :config (load-theme 'darktooth t))
;(use-package doom-themes           :ensure t                :config (load-theme 'doom-tomorrow-night t))
;(use-package monokai-theme         :ensure t                :config (load-theme 'monokai t))
;(use-package molokai-theme         :ensure t                :config (load-theme 'molokai t))
(use-package monokai-alt-theme     :ensure t                :config (load-theme 'monokai-alt t))
;(use-package spacemacs-common      :ensure spacemacs-theme  :config (load-theme 'spacemacs-dark t))

(global-display-line-numbers-mode)  ;; Display line numbers
(delete-selection-mode 1)           ;; Deletes selection mode while typing
(save-place-mode 1)                 ;; Save cursor position between sessions

(global-set-key (kbd "<mouse-4>") 'previous-line)               ; Mouse Down
(global-set-key (kbd "<mouse-5>") 'next-line)                   ; Mouse Up

(global-set-key (kbd "C-x C-f")   'counsel-find-file)           ; MUCH better find file option
(global-set-key (kbd "C-l")       'goto-line)                   ; Go to line
(global-set-key (kbd "C-n")       'mc/mark-next-like-this-word) ; Mark all words in the selected region
(global-set-key (kbd "C-p")       'fiplr-find-file)             ; CTRL+P  :-) What else?
(global-set-key (kbd "M-a")       'mark-whole-buffer)           ; Mark whole buffer
(global-set-key (kbd "M-b")       'buffer-menu)                 ; Show buffers
(global-set-key (kbd "M-c")       'copy-region-as-kill)         ; Copy
(global-set-key (kbd "M-e")       'shell-command)               ; Execute a command
(global-set-key (kbd "M-f")       'counsel-ag)                  ; ag in the current dir
(global-set-key (kbd "M-m")       'mc/edit-lines)               ; Multiple cursors para una línea
(global-set-key (kbd "M-o")       'dumb-jump-go)                ; Go to definition
(global-set-key (kbd "M-p")       'dumb-jump-back)              ; Go back from definition
(global-set-key (kbd "M-r")       'counsel-grep)                ; grep in the current file
(global-set-key (kbd "M-u")       'undo-tree-visualize)         ; Undo tree
(global-set-key (kbd "M-t")       'treemacs)                    ; Show/Hide NeoTree (filesystem tree)
(global-set-key (kbd "M-v")       'yank)                        ; Paste
(global-set-key (kbd "M-RET")     'smex)                        ; smex
(global-set-key (kbd "M-g b")     'magit-blame)                 ; Git Blame
(global-set-key (kbd "M-g d")     'magit-diff)                  ; Git Diff
(global-set-key (kbd "M-g k")     'git-link)                    ; Git Links for Bitbucket/Github/etc.
(global-set-key (kbd "M-g l")     'magit-log)                   ; Git log
(global-set-key (kbd "M-g p")     'magit-push)                  ; Git Push
(global-set-key (kbd "M-g t")     'git-timemachine-toggle)      ; Git Time Machine
(global-set-key (kbd "M-g s")     'magit-status)                ; Git status
(global-set-key (kbd "M-g u")     'magit-pull)                  ; Git Pull

(use-package dockerfile-mode :ensure t)

(use-package elixir-mode :ensure t)

(use-package markdown-mode :ensure t)

(use-package protobuf-mode :ensure t)

(use-package yaml-mode :ensure t)

(setq-default indent-tabs-mode nil)
(setq         indent-tabs-mode nil)
(setq         c-basic-offset          2)
(setq         tab-width               2)

(setq backup-directory-alist
  `((".*" . ,temporary-file-directory)))

(setq auto-save-file-name-transforms
  `((".*" ,temporary-file-directory t)))

(setq mac-option-modifier nil
      mac-command-modifier 'meta
      x-select-enable-clipboard t)

(use-package exec-path-from-shell :ensure t)
(exec-path-from-shell-initialize)

(setq inhibit-startup-message t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(use-package auto-package-update :ensure t)

(use-package counsel :ensure t)

(use-package dumb-jump :ensure t)

(use-package fiplr :ensure t)

(use-package flycheck :ensure t)
(global-flycheck-mode)

(use-package git-gutter+ :ensure t :config (global-git-gutter+-mode t))

(use-package git-link :ensure t)

(use-package magit :ensure t)

(use-package multiple-cursors :ensure t)

(use-package company-tabnine  :ensure t)
(add-to-list 'company-backends #'company-tabnine)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 2)

(use-package treemacs  :ensure t
  :config
  (setq treemacs-width                     55)
  (setq treemacs-follow-mode               nil)
  (setq treemacs-position                  'right)
  (setq treemacs-show-hidden-files         t)
  (setq treemacs-sorting                   'alphabetic-desc))

(use-package try  :ensure t)

(use-package undo-tree
:ensure t)
(global-undo-tree-mode)
