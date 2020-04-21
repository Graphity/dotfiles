(ido-mode 1)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(fset 'yes-or-no-p 'y-or-n-p)
(setq inhibit-startup-screen t)
(setq backup-directory-alist '(("." . "~/.emacs.d/.backup")))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'graphite t)
(set-default-font "Hack-10")

(defun on-frame-open (frame)
  (if (not (display-graphic-p frame))
    (set-face-background 'default "unspecified-bg" frame)))
(on-frame-open (selected-frame))
(add-hook 'after-make-frame-functions 'on-frame-open)

(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))

(use-package avy
  :ensure t
  :bind ("C-:" . avy-goto-char))

(use-package smex
  :ensure t
  :bind (("M-x" . smex)
         ("M-X" . smex-major-mode-commands)
         ("C-c C-c M-x" . execute-extended-command)))

(use-package iedit
  :ensure t)

(use-package ace-window
  :ensure t
  :init
  (global-set-key [remap other-window] 'ace-window))

(use-package expand-region
  :ensure t
  :config
  (global-set-key (kbd "C-=") 'er/expand-region))

(setq py-python-command "python3")
(setq python-shell-interpreter "python3")

(use-package jedi
  :ensure t
  :init
  ;; (add-hook 'python-mode-hook 'jedi:setup)
  (add-hook 'python-mode-hook 'jedi:ac-setup))

(use-package racer
  :ensure t
  :config
  (add-hook 'racer-mode-hook #'company-mode)
  (setq company-tooltip-align-annotations t)
  (setq racer-rust-src-path "~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"))

(use-package rust-mode
  :ensure t
  :config
  (add-hook 'rust-mode-hook #'racer-mode)
  (add-hook 'racer-mode-hook #'eldoc-mode)
  (setq rust-format-on-save t))

(use-package cargo
  :ensure t
  :config
  (setq compilation-scroll-output t)
  (add-hook 'rust-mode-hook 'cargo-minor-mode))

(use-package flycheck-rust
  :ensure t
  :config
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
  (add-hook 'rust-mode-hook 'flycheck-mode))

(use-package ggtags
:ensure t
:config 
(add-hook 'c-mode-common-hook
	  (lambda ()
	    (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
	      (ggtags-mode 1))))
)

(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode t))

(use-package web-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (setq web-mode-engines-alist
        '(("django" . "\\.html\\'")))
  (setq web-mode-ac-sources-alist
        '(("css" . (ac-source-css-property))
	  ("html" . (ac-source-words-in-buffer ac-source-abbrev))))
  (setq web-mode-enable-auto-closing t))

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
