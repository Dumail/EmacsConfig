;;关闭工具栏
(tool-bar-mode -1)

;;关闭滑动条
(scroll-bar-mode -1)

(setq-default cursor-type 'bar)

;;高亮当前行
(global-hl-line-mode t)

(setq-default inhibit-splash-screen 1)
(set-default-font "-ADBO-Source Code Variable-semibold-normal-normal-*-20-*-*-*-m-0-iso10646-1")

;;打开行号显示
(global-linum-mode 1)

;;设置打开全屏
;;(setq initial-frame-alist (quote ((fullscreen . maximized))))

(provide 'init-ui)
