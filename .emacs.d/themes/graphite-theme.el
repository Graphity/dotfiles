;;; graphite-theme.el --- custom theme

;;; Commentary:
;;; I don't recommend using this theme.

;;; Code:

(deftheme graphite
  "Created 2021-07-18.")

(custom-theme-set-faces
 'graphite
 '(default ((t (:inherit nil :stipple nil :background "#000000" :foreground "#56596b" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 122 :width normal :foundry "SRC" :family "Hack"))))
 '(cursor ((t (:background "#0b2d63"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((t (:family "Hack"))))
 '(escape-glyph ((t (:weight bold :foreground "#d26937"))))
 '(homoglyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(minibuffer-prompt ((t (:foreground "#1857bc"))))
 '(highlight ((t (:foreground "#ff0000" :background "#0a0422"))))
 '(region ((t (:background "#0a0422"))))
 '(shadow ((t (:foreground "#242337"))))
 '(secondary-selection ((t (:background "#095b85"))))
 '(trailing-whitespace ((t (:background "#c23127"))))
 '(font-lock-builtin-face ((t (:foreground "#1857bc"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#7390aa"))))
 '(font-lock-comment-face ((t (:foreground "#7390aa"))))
 '(font-lock-constant-face ((t (:foreground "#5EB0B1" :weight bold))))
 '(font-lock-doc-face ((t (:foreground "#7390aa"))))
 '(font-lock-function-name-face ((t (:foreground "#3ea290"))))
 '(font-lock-keyword-face ((t (:foreground "#1f388a"))))
 '(font-lock-negation-char-face ((t (:foreground "#12111f"))))
 '(font-lock-preprocessor-face ((t (:foreground "#12111f"))))
 '(font-lock-regexp-grouping-backslash ((t (:foreground "#edb443"))))
 '(font-lock-regexp-grouping-construct ((t (:foreground "#edb443"))))
 '(font-lock-string-face ((t (:foreground "royal blue"))))
 '(font-lock-type-face ((t (:foreground "#327cb8"))))
 '(font-lock-variable-name-face ((t (:foreground "#095b85"))))
 '(font-lock-warning-face ((t (:foreground "#095b85"))))
 '(button ((t (:foreground "#1f388a" :box 1))))
 '(link ((t (:foreground "#3b48e3" :underline t))))
 '(link-visited ((t (:foreground "#edb443"))))
 '(fringe ((t (:background "#000000" :foreground "#1f388a"))))
 '(header-line ((t (:background "#222222" :foreground "#1f388a"))))
 '(tooltip ((t (:background "#0c1014" :foreground "white"))))
 '(mode-line ((t (:background "#080808" :foreground "#1857bc" :box nil))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((t (:foreground "#1857bc"))))
 '(mode-line-inactive ((t (:background "#040404" :foreground "#182038" :box nil))))
 '(isearch ((t (:inverse-video t))))
 '(isearch-fail ((t (:foreground "#df4576"))))
 '(lazy-highlight ((t (:foreground "#091f2e" :background "#edb443"))))
 '(match ((t (:background "#1e1212"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch)))))
 '(menu ((((type tty)) (:inverse-video t)) (((type x-toolkit)) nil) (t (:inverse-video t))))
 '(flycheck-error ((t (:underline (:color "#df4576" :style wave)))))
 '(ido-subdir ((t (:foreground "#1f388a"))))
 '(vertical-border ((t (:foreground "#182038")))))

(provide-theme 'graphite)

;;; graphite-theme.el ends here
