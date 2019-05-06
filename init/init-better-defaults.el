;;自动更新配置文件的修改
(global-auto-revert-mode t)

;;关闭备份文件
(setq make-backup-files nil)

;;设置快捷输入
(setq-default abbrev-mode t)
(define-abbrev-table 'global-abbbrev-table'(
					    ;;singnature
					    ("pcf" "panchaofan")
					    ;;emacs regex
					    ))
;;If you wanted an abbreviation for ‘Your Name’ to be ‘yn’, just type ‘yn’ and with your point after the ‘n’ do C-x a i g (mnemonic add inverse global) and enter the expansion.

;;设置打开最近文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 10)

;;打开选择删除模式
(delete-selection-mode t)

;;设置括号高亮
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;格式化缓冲区
(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

;;智能格式化
(defun indent-region-or-buffer ()
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indented selected region."))
      (progn
	(indent-buffer)
	(message "Indented buffer.")))))

;;手动补全配置
(setq hippie-expand-try-functions-list '(try-expand-dabbrev
					 try-expand-dabbrev-all-buffers
					 try-expand-dabbrev-from-kill
					 try-complete-file-name-partially
					 try-complete-file-name
					 try-expand-all-abbrevs
					 try-expand-list
					 try-expand-line
					 try-complete-lisp-symbol-partially
					 try-complete-lisp-symbol))

(fset 'yes-or-no-p 'y-or-n-p)

;;总是递归删除和复制
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

;;C-x C-j open current directory
(require 'dired-x)

(setq dired-dwim-target t)

(provide 'init-better-defaults)
