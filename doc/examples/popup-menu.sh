#! /bin/bash
rm /dev/shm/menu 2>/dev/null
cat > /dev/shm/inmenu
xterm -e bash -c 'answ=$(cat /dev/shm/inmenu | kbdmenu); echo -n "$answ" > /dev/shm/menu'
while sleep 0.1; do [ -f /dev/shm/menu ] && break; done
cat /dev/shm/menu
rm /dev/shm/menu
rm /dev/shm/inmenu
