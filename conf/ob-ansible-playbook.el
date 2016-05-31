(require 'ob)

(defun org-babel-execute:ansible-playbook (body params)
  (let ((in-file (org-babel-temp-file "ansible-playbook-")))
    (with-temp-file in-file (insert body))
    (shell-command-to-string
     (format "ansible-playbook %s" in-file))))

(defun org-babel-prep-session:ansible-playbook (_session _params)
  (error "Ansible does not support sessions"))

(provide 'ob-ansible-playbook)
;;; ob-ansible-playbook.el ends here
