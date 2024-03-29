# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

#LOG="$HOME/profile-invocations"
#echo "-----" >>$LOG
#echo "Caller: $0" >>$LOG
#echo "DESKTOP_SESSION: $DESKTOP_SESSION" >>$LOG
#echo "GDMSESSION: $GDMSESSION" >>$LOG
if [ "$0" = "/usr/sbin/lightdm-session" -a "$DESKTOP_SESSION" = "i3" ]; then
    export $(gnome-keyring-daemon -s)
fi
# turn off secundary screen
xrandr --output LVDS-1-1 --off
# turn left - standing mode - the external monitor
xrandr --output VGA1 --rotate left
