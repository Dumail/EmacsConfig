(package-initialize)

(require 'org-install)
(require 'ob-tangle)
(org-babel-load-file (expand-file-name "init/init-key&ui.org" user-emacs-directory))

;;设置编辑配置文件的函数
(defun open-init-file()
  (interactive)
  
  (find-file "~/.emacs.d/init.el"))

(add-to-list 'load-path "~/.emacs.d/init")
(require 'init-packages)
(require 'init-better-defaults)
(require 'init-org)
(require 'org)

(setq custom-file (expand-file-name "init/custom.el" user-emacs-directory))
(load-file custom-file)
