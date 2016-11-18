;;; watch.el --- Display output of command at a regular interval

;; Copyright (C) 2016 Svend Sorensen <svend@ciffer.net>

;; Author: Svend Sorensen <svend@ciffer.net>
;; Version: 0.1

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This package shows the output of a command run periodically, similar to the
;; watch command line utility.

;;; Code:

(require 'shell)

(defvar watch-buffer-name "*watch*"
  "Name of the watch buffer.")

(defvar watch-timer nil
  "Timer for rerunning watched command.")

(defvar watch-command nil
  "Watched command.")

;;;###autoload
(defun watch (command &optional interval)
  "Run COMMAND every INTERVAL seconds.

The output appears in the buffer `watch-buffer-name'."
  (interactive
   (list
    (read-shell-command "Shell command: " nil nil)
    (when current-prefix-arg
      (abs (prefix-numeric-value current-prefix-arg)))))
  (unless interval (setq interval 2))
  (setq watch-command command)
  (watch-stop)
  (setq watch-timer
        (run-at-time t interval 'watch-run))
  (get-buffer-create watch-buffer-name)
  (display-buffer watch-buffer-name '(nil (allow-no-window . t)))
  (watch-run))

(defun watch-run ()
  "Run the watched command, or cancel it if the buffer does not exist."
  (if (get-buffer watch-buffer-name)
      (with-current-buffer watch-buffer-name
        (erase-buffer)
        (start-process "watch" (current-buffer) shell-file-name
                       shell-command-switch watch-command))
    (watch-stop)))

(defun watch-stop ()
  "Cancel the watched command."
  (interactive)
  (when watch-timer
    (cancel-timer watch-timer)
    (setq watch-timer nil)))

;;; watch.el ends here
