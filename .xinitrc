sxhkd & 
picom -b &
dunst &
xidlehook  --not-when-fullscreen --timer 1000 'systemctl suspend' '' &
nohup flameshot >/dev/null 2>&1 &
nitrogen --restore &
polybar &
setxkbmap -layout us,ara -variant ,digits -option grp:alt_shift_toggle caps:escape
exec bspwm
