#!/bin/bash
printf "setting camera controls\n"
sudo uvcdynctrl -i /usr/share/uvcdynctrl/data/046d/logitech.xml >/dev/null 2>/dev/null
printf "settings led mode off\n"
uvcdynctrl -s 'LED1 Mode' 0 >/dev/null 2>/dev/null
printf "starting python http server port: 8000\n"
python -m SimpleHTTPServer >/dev/null 2>/dev/null &
echo $! > http.pid
printf "starting monitor loop\n"
fswebcam --set brightness=60% --set contrast=13% -r 800x600 image.jpeg -b -l 1 --pid fswebcam.pid
 
