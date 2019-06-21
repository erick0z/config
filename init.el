(require 'package)

(add-to-list 'package-archives
	                  '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; emacs golang setup
(setq package-list
      '(go-mode auto-complete go-autocomplete))

(package-initialize)

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
        (package-install package)))
