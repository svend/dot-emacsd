(require 'ob)

(defun org-babel-execute:ansible-playbook (body params)
  (let ((inventory (cdr (assoc :inventory params)))
        (in-file (org-babel-temp-file "ansible-playbook-")))
    (with-temp-file in-file (insert body))
    (shell-command-to-string
     (concat "ansible-playbook"
             (when inventory (format " --inventory %s" inventory))
             (format " %s" in-file)))))

(defun org-babel-prep-session:ansible-playbook (_session _params)
  (error "Ansible does not support sessions"))

(provide 'ob-ansible-playbook)
;;; ob-ansible-playbook.el ends here
