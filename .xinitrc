setxkbmap -layout latam,latam
setxkbmap -option numpad:mac
xrandr --output HDMI-1-0 --mode 1920x1080 --right-of eDP-1
slstatus &
picom -c &
xwallpaper --zoom ~/.config/wallpaper/kaneki.jpg
xrdb .Xresources
pulseaudio --start
exec dwm 
