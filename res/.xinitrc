xrdb -merge ~/.Xresources

./archinstall/res/mystatus
./archinstall/res/bitcoin_price
exec xss-lock slock &
touchpad_id=$(xinput --list | awk '/TouchPad/ {print $6}' | tr -d 'id=')
tapping_id=$(xinput --list-props $touchpad_id | awk '/libinput Tapping Enabled \(/ {print $4}' | tr -d '():')
natural_id=$(xinput --list-props $touchpad_id | awk '/libinput Natural Scrolling Enabled \(/ {print $5}'| tr -d '():')
# Enable Tapping




sudo sysctl net.ipv4.ip_default_ttl=65 
xinput --set-prop $touchpad_id $tapping_id 1
xinput --set-prop $touchpad_id $natural_id 1
setxkbmap -model pc104 -layout us,ru -variant ,, -option grp:caps_toggle
feh --bg-fill ~/archinstall/res/wallpaper.jpg & 
exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
exec /usr/bin/dunst &
exec picom &
exec dbus-launch dwm 

