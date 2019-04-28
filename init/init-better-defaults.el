;;自动更新配置文件的修改
(global-auto-revert-mode t)

;;关闭备份文件
(setq make-backup-files nil)

;;设置快捷输入
(abbrev-mode)
(define-abbrev-table 'global-abbrev-table'(
					   ;;singnature
					   ("pcf" "panchaofan")
					   ;;emacs regex
					   ))
;;设置打开最近文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 10)

;;打开选择删除模式
(delete-selection-mode t)

;;设置括号高亮
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(provide 'init-better-defaults)
