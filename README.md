emacs-daylight
============

Chooses your Emacs 24 color theme based on the time of day.

If you're like me, you change your colorscheme a lot throughout the day out of
either eye-strain or color-induced boredom. Let this script take care of this
process for you!

Features four time windows for Emacs to re-apply your favorite themes. The start
time of each window, as well as each of the four themes can be easily customized.


Installation
------------
* First, clone the repository:

        $ cd ~/.emacs.d/ && git clone https://github.com/daf-/emacs-daylight.git

* Then add the following to your ```~/.emacs``` or ```init.el``` file:
        (add-to-list 'load-path "~/.emacs.d/emacs-daylight")
        (require 'daylight)


Settings
--------
Set your custom themes as follows:

    (setq daylight-morning-theme 'solarized-light)

You may also specify the starting times - the hours at which the morning,
afternoon, evening, and late night phases each begin. For example:

    (setq daylight-morning-hour 4) ;; I sincerely hope you don't wake up this early

By default, the times are defined as follows:

* daylight-morning-hour -> 6
* daylight-afternoon-hour -> 6
* daylight-evening-hour -> 6
* daylight-late-hour -> 6

You may also change the time interval at which the script-reapplies your themes:

    (setq daylight-interval <number-of-seconds>)
