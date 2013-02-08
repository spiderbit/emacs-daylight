;; Daniel Friedman
;; February 2013
;;
;; Chooses your color theme based on the time of day
;; Requires >= Emacs 24


(defvar daylight-interval 60 "Interval (in seconds) that daylight re-applies the appropriate theme")
(defvar daylight-morning-theme 'adwaita "Theme chosen by daylight in the morning")
(defvar daylight-afternoon-theme 'zen-and-art "Theme chosen by daylight in the afternoon")
(defvar daylight-evening-theme 'twilight "Theme chosen by daylight in the evening")
(defvar daylight-late-theme 'solarized-dark "Theme chosen by daylight in the late-night")

(defvar daylight-morning-hour 6 "Hour at which daylight begins applying the morning theme")
(defvar daylight-afternoon-hour 12 "Hour at which daylight begins applying the afternoon theme")
(defvar daylight-evening-hour 18 "Hour at which daylight begins applying the evening theme")
(defvar daylight-late-hour 22 "Hour at which daylight begins applying the late-night theme")

(defun daylight-current-hour ()
  "Returns the current hour in military time"
  (string-to-number (car (split-string (cadddr (split-string (current-time-string))) ":"))))

(defun daylight-get-theme ()
  "Returns the appropriate theme for the current hour"
  (cond ((and (>= (daylight-current-hour) daylight-morning-hour) (< (daylight-current-hour) daylight-afternoon-hour))
         daylight-morning-theme)
        ((and (>= (daylight-current-hour) daylight-afternoon-hour) (< (daylight-current-hour) daylight-evening-hour))
         daylight-afternoon-theme)
        ((and (>= (daylight-current-hour) daylight-evening-hour) (< (daylight-current-hour) daylight-late-hour))
         daylight-evening-hour)
        (else daylight-late-hour)))

(defun daylight-choose-theme ()
  "Chooses a theme based on the current time"
  (load-theme (daylight-get-theme) t))

(provide 'daylight)

(run-at-time "0 sec" daylight-interval 'daylight-choose-theme)
