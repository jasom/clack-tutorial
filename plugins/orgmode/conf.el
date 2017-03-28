(setq org-export-babel-evaluate nil)

(setq nikola-use-pygments t)


(setq org-babel-default-header-args '((:session . "none") (:results . "replace") (:exports . "both") (:cache . "no") (:noweb . "no") (:hlines . "no") (:tangle . "no")))

(defun pygmentize (lang code)
  "Use Pygments to highlight the given code and return the output"
  (with-temp-buffer
    (insert code)
    (let ((lang (or (cdr (assoc lang org-pygments-language-alist)) "text")))
      (shell-command-on-region (point-min) (point-max)
                               (format "pygmentize -f html -P 'cssclass=highlight-%s' -l %s" lang lang)
                               (buffer-name) t))

    (buffer-string)))
