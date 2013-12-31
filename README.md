## emacs-daylight

Automatically change your Emacs 24 color theme based on the time of day.

Do you change your theme a lot throughout the day?  Let this minor mode take
care of that for you!

Features four time frames for Emacs to apply your favorite themes.


### Installation

* First, clone the repository:

```
$ cd ~/.emacs.d/ && git clone https://github.com/daf-/emacs-daylight.git
```

* Then add the following to your init file:

```lisp
(add-to-list 'load-path "~/.emacs.d/emacs-daylight")
(require 'daylight)
```


### Settings

You can customize daylight with `M-x customize-group RET
daylight`. Alternatively, set your custom themes as follows:

```lisp
(setq daylight-morning-theme 'my-morning-theme
      daylight-afternoon-theme 'my-afternoon-theme
      daylight-evening-theme 'my-evening-theme
      daylight-late-theme 'my-late-theme)
```

To activate: `M-x daylight-mode` `(daylight-mode)`.

You may also specify the starting times - the hours at which the morning,
afternoon, evening, and late night phases each begin. For example:

```lisp
(setq daylight-morning-hour 4) ;; Please don't wake up this early
```

By default, the times are defined as follows:

* daylight-morning-hour: 6
* daylight-afternoon-hour: 12
* daylight-evening-hour: 18
* daylight-late-hour: 20
