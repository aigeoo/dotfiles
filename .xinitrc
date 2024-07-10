sxhkd & 
picom -b &
dunst &
nohup flameshot >/dev/null 2>&1 &
nitrogen --restore &
polybar &
setxkbmap -layout us,ara -variant ,digits -option grp:alt_shift_toggle caps:escape &
xidlehook  --not-when-fullscreen --timer 1000 'systemctl suspend' '' &
udiskie &
exec bspwm
