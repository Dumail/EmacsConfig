(package-initialize)

;;设置编辑配置文件的函数
(defun open-init-file()
  (interactive)
  
  (find-file "~/.emacs.d/init.el"))

(add-to-list 'load-path "~/.emacs.d/init")
(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-org)
(require 'init-keybindings)
(require 'org)

(setq custom-file (expand-file-name "init/custom.el" user-emacs-directory))

(load-file custom-file)
