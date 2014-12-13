dotfiles
========

my dotfiles


Turn off Touchpad
-----------------

xinput list
xinput set-prop (id) "Device Enabled" 0

#!/bin/bash
if synclient -l | grep "TouchpadOff .*=.*0" ; then
    synclient TouchpadOff=1 ;
else
    synclient TouchpadOff=0 ;
fi

i3
---

http://feeding.cloud.geek.nz/posts/creating-a-modern-tiling-desktop-environment-using-i3/


