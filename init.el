
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/init")
(require 'init-packages)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (company))))
(custom-set-faces
 ;; custom-set-faces was aX1dded by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq-default cursor-type 'bar)
(setq-default inhibit-splash-screen 1)
(set-default-font "-ADBO-Source Code Variable-semibold-normal-normal-*-20-*-*-*-m-0-iso10646-1")


;;关闭工具栏
(tool-bar-mode -1)
;;关闭滑动条
(scroll-bar-mode -1)
;;打开行号显示
(global-linum-mode 1)
;;关闭备份文件
(setq make-backup-files nil)

;;设置org中的代码高亮
(require 'org)
(setq org-src-fontify-natively t)
(setq org-agenda-files '("~/Documents/org"))
(global-set-key (kbd "C-c a") 'org-agenda)

;;设置打开最近文件的快捷键
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 10)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;打开选择删除模式
(delete-selection-mode t)

;;设置编辑配置文件的快捷键
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-init-file)
;;设置打开全屏
;(setq initial-frame-alist (quote ((fullscreen . maximized))))

;;设置括号高亮
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;高亮当前行
(global-hl-line-mode t)




;;自动更新配置文件的修改
(global-auto-revert-mode t)


(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

;;设置快捷输入
(abbrev-mode)
(define-abbrev-table 'global-abbrev-table'(
					   ;;singnature
					   ("pcf" "panchaofan")
					   ;;emacs regex
					   ))
