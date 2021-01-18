#!/bin/bash

# get widget dependencies
echo getting widget dependencies...
git clone https://github.com/streetturtle/awesome-wm-widgets.git
cd awesome-wm-widgets
cp -r battery-widget ../battery-widget
cp -r volume-widget ../volume-widget
git clone https://github.com/horst3180/arc-icon-theme --depth 1 && cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install
#installing applications
echo installing appliations used...
sudo pacman -S kitty dmenu nitrogen scrot terminus-font
