setxkbmap -layout latam,latam
setxkbmap -option numpad:mac
slstatus &
nmcli  device wifi connect LLA-953xHc7K password t365FhhF
xrandr --output HDMI-1-1 --mode 1920x1080 --right-of eDP1
picom -c &
xwallpaper --zoom ~/.config/wallpaper/wallpaper_2.jpg
exec dwm 
