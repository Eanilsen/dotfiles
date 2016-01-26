(require 'package)
(package-initialize)
(require 'org)
(require 'projectile)
(require 'helm-config)
(require 'fill-column-indicator)
(require 'evil-surround)
(require 'evil-leader)
(require 'evil)
(global-evil-surround-mode 1)
(projectile-global-mode)
(global-evil-leader-mode)
(fci-mode t)
(evil-mode t)

(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives
	     '("marmalade" . "https://marmalade-repo.org/packages/"))

(setq package-enable-at-startup nil)

;; Color theme
(load-theme 'zenburn t)

;; Line numbers
(global-linum-mode t)

;; Disable menus
(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)

;; Font settings
(set-default-font "Gohufont 11")

;; Hide the startup messages
(setq inhibit-splash-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t)

;; Better word wrapping
(visual-line-mode 1)

;; Enforce trailing newlines
(setq require-final-newline t)

;; Slime lisp
(progn
  (require 'elisp-slime-nav)
  (defun my-lisp-hook ()
    (elisp-slime-nav-mode)
    (turn-on-eldoc-mode)
    )
  (add-hook 'emacs-lisp-mode-hook 'my-lisp-hook)
)

;; Evil leader
(evil-leader/set-leader ",")
(evil-leader/set-key
  "e" 'find-file
  "b" 'switch-to-buffer
  "k" 'kill-buffer
  "z" 'eval-buffer
  "s" 'save-buffer
  "q" 'kill-buffer-and-window
  "c" 'comment-or-uncomment-region
  "x" 'save-buffers-kill-emacs
  "o" (lambda () (interactive) (find-file "~/org/organizer.org"))
  ";" (lambda () (interactive) (find-file "~/.emacs")))

;; Elpy
(elpy-enable)
(define-key yas-minor-mode-map (kbd "C-c C-s") 'yas-expand)
(define-key yas-minor-mode-map [(tab)] nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)

;; Org mode
(global-set-key (kbd "C-c o")
		(lambda () (interactive)
		  (find-file "~/org/organizer.org")))
(global-set-key (kbd "C-c c") 'org-capture)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-default-notes-file "~/org/organizer.org")
(setq org-refile-targets '((org-agenda-files . (:maxlevel . 6))))
(setq org-log-done t)

;; Helm
(global-set-key (kbd "M-x") 'helm-M-x)
(helm-mode 1)

;; Yasnippet
(add-to-list 'load-path
	     "~/.emacs.d/elpa/yasnippet-20151126.518")
(add-to-list 'yas-snippet-dirs
	     "~/.emacs.d/elpa/yasnippet-20151126.518/snippets")
(require 'yasnippet)
(yas-global-mode t)

;; Org mode
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; Backup
(setq backup-directory-alist '(("." . "~/.saves")))
(setq backup-by-copying t)

;; Evil mode
;; Evil mode key bindings
(eval-after-load "evil"
  '(progn
     (define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
     (define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
     (define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
     (define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
     (evil-define-key 'normal emacs-lisp-mode-map (kbd "K")
       'elisp-slime-nav-describe-elisp-thing-at-point)
     (define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
     (define-key evil-visual-state-map (kbd "C-u") 'evil-scroll-up)
     (define-key evil-insert-state-map (kbd "C-u")
       (lambda ()
	 (interactive)
	 (evil-delete (point-at-bool) (point))))))

(eval-after-load 'dired
  '(progn
     (evil-set-initial-state 'dired-mode 'normal)
     (evil-define-key 'normal dired-mode-map
       "h" 'my-dired-up-directory
       "l" 'dired-find-alternative-file
       "o" 'dired-sort-toggle-or-edit
       "v" 'dired-toggle-marks
       "m" 'dired-mark
       "u" 'dired-unmark
       "U" 'dired-unmark-all-marks
       "c" 'dired-create-directory
       "n" 'evil-search-next
       "N" 'evil-search-previous
       "q" 'kill-this-buffer
       )
     )
  )

(defun my-dired-up-directory ()
  "Take dired up one directory, but behave like
dired-find-alternative-file"
  (interactive)
  (let ((old (current-buffer)))
    (dired-up-directory)
    (kill-buffer old)
    ))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/org/organizer.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
