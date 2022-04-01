;;; silence-theme.el --- custom theme

;;; Commentary:
;;; WOW this theme is so cool, I loooove silence

;;; Code:

(deftheme silence)
(let ((class '((class color) (min-colors 89)))
      (fg1 "#bdc4cc")
      (fg2 "#abb2ba")
      (fg3 "#5f656b")
      (fg4 "#3d3f42")
      (bg1 "#000000")
      (bg2 "#080808")
      (bg3 "#121212")
      (bg4 "#2a303f")
	  
      (red     "#e95678")
      (green   "#09f7a0")
      (yellow  "#f9e995")
      (blue    "#218cff")
	  (cyan    "#6fc3df")
	  (orange  "#fab795")
	  (purple  "#5d50a8")
	  (teal    "#46cdcf")
	  (violet  "#6c6f93")
	  (blue2   "#729fdd"))

  (custom-theme-set-faces
   'silence
   `(default ((,class (:background ,bg1 :foreground ,fg1))))

   ;; font lock
   `(font-lock-builtin-face ((,class (:foreground ,blue2))))
   `(font-lock-comment-face ((,class (:foreground ,teal :italic t))))
   `(font-lock-negation-char-face ((,class (:foreground ,orange))))
   `(font-lock-reference-face ((,class (:foreground ,orange))))
   `(font-lock-constant-face ((,class (:foreground ,orange))))
   `(font-lock-doc-face ((,class (:foreground ,teal))))
   `(font-lock-function-name-face ((,class (:foreground ,blue2))))
   `(font-lock-keyword-face ((,class (:bold ,class :foreground ,purple))))
   `(font-lock-string-face ((,class (:foreground ,orange))))
   `(font-lock-type-face ((,class (:foreground ,cyan))))
   `(font-lock-variable-name-face ((,class (:foreground ,red))))
   `(font-lock-warning-face ((,class (:foreground ,green))))

   ;; built-in UI
   `(region ((,class (:background ,bg4 :distant-foreground ,bg1 :extend nil))))
   `(highlight ((,class (:foreground ,bg1 :background ,fg1))))
   `(hl-line ((,class (:background ,bg2))))
   `(fringe ((,class (:background ,bg1 :foreground ,fg4))))
   `(cursor ((,class (:background ,blue))))
   `(show-paren-match ((t (:foreground ,green :bold t))))
   `(show-paren-mismatch ((t (:foreground ,red :bold t))))
   `(isearch ((,class (:foreground ,bg1 :background ,red))))
   `(lazy-highlight ((,class (:background ,bg4))))
   `(vertical-border ((,class (:foreground ,bg4))))
   `(minibuffer-prompt ((,class (:foreground ,blue :weight normal))))
   `(default-italic ((,class (:italic t))))
   `(link ((,class (:foreground ,blue :underline t))))
   `(error ((,class (:foreground ,red))))
   `(red ((,class (:foreground ,yellow))))
   `(success ((,class (:foreground ,green))))
   `(line-number ((t (:background ,bg2 :foreground ,fg4))))
   `(line-number-current-line ((t (:background ,bg2 :foreground ,fg1))))
   `(trailing-whitespace ((,class :foreground nil :background ,red)))
   `(custom-button ((,class (:foreground ,teal :background ,bg1 :box 1))))
   `(custom-button-mouse ((,class (:foreground ,bg1 :background ,teal :box 1))))
   `(custom-button-pressed ((,class (:foreground ,bg1 :background ,teal :box 1))))
   `(custom-button-pressed-unraised ((,class (:foreground ,bg1 :background ,teal :box 1))))
   `(custom-button-unraised ((,class (:foreground ,bg1 :background ,teal :box 1))))
   
   ;; mode-line
   `(mode-line ((,class (:bold nil :foreground ,fg2 :background ,bg2))))
   `(mode-line-inactive ((,class (:bold nil :foreground ,fg3 :background ,bg2))))
   `(mode-line-buffer-id ((,class (:bold nil :foreground ,fg1 :background nil))))
   `(mode-line-highlight ((,class (:foreground ,blue :box nil :weight normal))))
   `(mode-line-emphasis ((,class (:foreground ,red))))

   ;; doom-modeline
   `(doom-modeline-bar ((,class (:background ,bg2 :foreground ,fg2))))
   `(doom-modeline-highlight ((,class (:foreground ,fg1))))
   `(doom-modeline-buffer-file ((,class (:foreground ,red))))
   `(doom-modeline-buffer-modified ((,class (:foreground ,red))))
   `(doom-modeline-panel ((,class (:background ,bg2))))
   `(doom-modeline-urgent ((,class (:foreground ,red))))
   `(doom-modeline-info ((,class (:foreground ,green))))

   ;; ivy
   `(ivy-subdir ((,class (:foreground ,blue2))))
   `(ivy-current-match ((,class (:foreground ,purple))))
   `(ivy-minibuffer-match-face-1 ((,class (:foreground ,fg3))))
   `(ivy-minibuffer-match-face-2 ((,class (:foreground ,orange))))
   `(ivy-minibuffer-match-face-3 ((,class (:foreground ,yellow))))
   `(ivy-minibuffer-match-face-4 ((,class (:foreground ,red))))

   ;; org-mode
   `(org-level-1 ((,class (:bold t :foreground ,blue))))
   `(org-level-2 ((,class (:bold nil :foreground ,blue2))))
   `(org-level-3 ((,class (:bold t :foreground ,cyan))))
   `(org-level-4 ((,class (:bold nil :foreground ,teal))))
   `(org-special-keyword ((,class (:foreground ,teal))))
   `(org-date ((,class (:underline t :foreground ,teal))))
   `(org-link ((,class (:underline t :foreground ,blue))))
   `(org-todo ((,class (:foreground ,orange :bold t))))
   `(org-done ((,class (:foreground ,teal :bold t))))
   `(org-warning ((,class (:underline t :foreground ,red))))
   `(org-footnote ((,class (:underline t :foreground ,fg4))))
   `(org-document-title ((,class (:foreground ,cyan :bold t))))
   `(org-block-begin-line ((,class (:foreground ,violet))))

   ;; magit
   `(magit-item-highlight ((,class :background ,teal)))
   `(magit-section-heading ((,class (:foreground ,blue :background ,bg2 :weight bold))))
   `(magit-hunk-heading ((,class (:background ,teal))))
   `(magit-section-highlight ((,class (:background ,bg4))))
   `(magit-diff-context-highlight ((,class (:background ,bg3))))
   `(magit-diffstat-added ((,class (:foreground ,blue))))
   `(magit-diffstat-removed ((,class (:foreground ,blue))))
   `(magit-process-ok ((,class (:foreground ,blue2 :weight bold))))
   `(magit-process-ng ((,class (:foreground ,red :weight bold))))
   `(magit-branch ((,class (:foreground ,orange :weight bold))))
   `(magit-log-author ((,class (:foreground ,orange))))
   `(magit-log-date ((,class (:foreground ,blue))))
   `(magit-hash ((,class (:foreground ,purple))))

   ;; dired
   `(dired-header ((,class (:foreground ,blue))))
   `(all-the-icons-dired-dir-face ((,class (:foreground ,blue2))))

   ;; term
   `(term ((,class (:foreground ,fg1 :background ,bg1))))
   `(term-color-black ((,class (:foreground ,bg3 :background ,bg3))))
   `(term-color-blue ((,class (:foreground ,blue :background ,blue))))
   `(term-color-red ((,class (:foreground ,red :background ,red))))
   `(term-color-green ((,class (:foreground ,green :background ,green))))
   `(term-color-yellow ((,class (:foreground ,yellow :background ,yellow))))
   `(term-color-magenta ((,class (:foreground ,purple :background ,purple))))
   `(term-color-cyan ((,class (:foreground ,cyan :background ,cyan))))
   `(term-color-white ((,class (:foreground ,fg2 :background ,fg2))))

   ;; company-mode
   `(company-tooltip ((,class (:foreground ,fg2 :background ,bg1 :bold t))))
   `(company-tooltop-annotation ((,class (:foreground ,orange))))
   `(company-tooltip-common ((,class (:foreground ,red))))
   `(company-tooltip-common-selection ((,class (:foreground ,red))))
   `(company-tooltip-mouse ((,class (:inherit highlight))))
   `(company-tooltip-selection ((,class (:background ,bg3 :foreground ,fg3))))
   `(company-template-field ((,class (:inherit region))))

   ;; iedit-mode
   `(iedit-occurrence ((,class (:background ,bg4))))

   ;; web-mode
   `(web-mode-builtin-face ((,class (:inherit ,font-lock-builtin-face))))
   `(web-mode-comment-face ((,class (:foreground ,green))))
   `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))
   `(web-mode-keyword-face ((,class (:foreground ,orange))))
   `(web-mode-doctype-face ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-function-name-face ((,class (:inherit ,font-lock-function-name-face))))
   `(web-mode-string-face ((,class (:foreground ,yellow))))
   `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))
   `(web-mode-html-attr-name-face ((,class (:foreground ,orange))))
   `(web-mode-html-attr-value-face ((,class (:foreground ,blue2))))
   `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))
   `(web-mode-html-tag-face ((,class (:foreground ,purple))))
   `(tab-line ((,class (:inherit fringe :box (:line-width 4 :color ,bg2)))))
   `(tab-line-tab ((,class (:inherit tab-line))))
   `(tab-line-tab-inactive ((,class (:inherit tab-line :foreground ,bg4))))
   `(tab-line-tab-current ((,class (:background ,bg4 :foreground ,fg1 :box (:line-width 4 :color ,bg4)))))
   `(tab-line-highlight ((,class (:background ,bg1 :foreground ,fg2 :box (:line-width 4 :color ,bg1)))))))

(provide-theme 'silence)

;;; silence-theme.el ends here
