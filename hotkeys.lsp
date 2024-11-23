

(defun duplicate-line ()
  "Duplicate current line down."
  (interactive) 
  (setq currcol (current-column))
  (kill-ring-save (line-beginning-position) (line-end-position))
  (goto-char (line-end-position))
  (newline)
  (yank)
  (move-to-column currcol)
)
(global-set-key (kbd "C-c d") 'duplicate-line)


(defun cut-line ()
  "Cut current line."
  (interactive) 
  (kill-ring-save (line-beginning-position) (line-end-position))
  (kill-whole-line)
)
(global-set-key (kbd "C-c <deletechar>") 'cut-line)

