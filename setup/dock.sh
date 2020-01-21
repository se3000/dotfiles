#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Firefox.app"
dockutil --no-restart --add "/Applications/iTerm.app"
dockutil --no-restart --add '~/Downloads' --view grid --display folder --allhomes

killall Dock
