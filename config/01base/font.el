;; 设置字体的函数
(defun my-default-font (frame)
  (interactive)
  (if (window-system frame)
      (progn 
       (set-default-font "Yahei Consolas Hybrid-12")
       (set-fontset-font (frame-parameter nil 'font)
                         'han '("Yahei Consolas Hybrid"."unicode-bmp"))
       ))
  )

(my-default-font (selected-frame))

;; 有关界面和字体的配置
(add-hook 'after-make-frame-functions
          (lambda (new-frame)
            (select-frame new-frame)
            (my-default-font new-frame)
            ))



;; (if (>= emacs-major-version 23)
;;     (progn (set-frame-font "DejaVu Sans Mono-10")
;;      (set-fontset-font (frame-parameter nil 'font)
;;                        'unicode '("Microsoft YaHei" . "unicode-bmp")) 
;;      (set-fontset-font (frame-parameter nil 'font)
;;                        'han '("Microsoft YaHei" . "unicode-bmp"))
;;      (set-fontset-font (frame-parameter nil 'font)
;;                        'symbol '("Microsoft YaHei"  . "unicode-bmp"))
;;      (set-fontset-font (frame-parameter nil 'font)
;;                        'cjk-misc '("Microsoft YaHei"  . "unicode-bmp"))
;;      (set-fontset-font (frame-parameter nil 'font)
;;                        'bopomofo '("Microsoft YaHei"  . "unicode-bmp")) 
;;      )
;; (create-fontset-from-fontset-spec
;; "-*-courier-medium-R-normal--14-*-*-*-*-*-fontset-mymono,
;; chinese-gb2312:-*-wenquanyi bitmap song-medium-*-normal--14-*-*-*-*-*-iso10646-1,
;; chinese-gbk:-*-wenquanyi bitmap song-medium-*-normal--14-*-*-*-*-*-iso10646-1,
;; chinese-gb18030:-*-wenquanyi bitmap song-medium-*-normal--14-*-*-*-*-*-iso10646-1"
;; )
;; (setq default-frame-alist (append '((font . "fontset-mymono")) default-frame-alist))
;; (set-default-font "fontset-mymono")
;; )

;; (set-frame-font "DejaVu Sans Mono-10")
;; (set-fontset-font (frame-parameter nil 'font)
;;                   'unicode '("Microsoft YaHei" . "unicode-bmp")) 
;; (set-fontset-font (frame-parameter nil 'font)
;;                   'han '("Microsoft YaHei" . "unicode-bmp"))
;; (set-fontset-font (frame-parameter nil 'font)
;;                   'symbol '("Microsoft YaHei"  . "unicode-bmp"))
;; (set-fontset-font (frame-parameter nil 'font)
;;                   'cjk-misc '("Microsoft YaHei"  . "unicode-bmp"))
;; (set-fontset-font (frame-parameter nil 'font)
;;                   'bopomofo '("Microsoft YaHei"  . "unicode-bmp")) 

