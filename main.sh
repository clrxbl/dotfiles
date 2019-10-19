#!/bin/bash

case $1 in 
	on)
        if test -f "$HOME/.config/yeecli/yeecli.cfg"; then
            echo "Yeecli configuration exists"
        else
            echo "Yeecli configuration does not exist, creating..."
            mkdir -p $HOME/.config/yeecli
            echo "[default]
ip = 10.0.0.144" >> $HOME/.config/yeecli/yeecli.cfg
        fi
		yeecli turn on
	;;
	off)
        if test -f "$HOME/.config/yeecli/yeecli.cfg"; then
            echo "Yeecli configuration exists"
        else
            echo "Yeecli configuration does not exist, creating..."
            mkdir -p $HOME/.config/yeecli
            echo "[default]
ip = 10.0.0.144" >> $HOME/.config/yeecli/yeecli.cfg
        fi
		yeecli turn off
	;;
	windows)
        echo "Setting BootNext to Windows Boot Manager..."
		sudo efibootmgr -n 0000
	linux)
        echo "Setting BootNext to Linux Boot Manager..."
		sudo efibootmgr -n 0001
	;;
esac
