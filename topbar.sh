#!/Bin/Bash

while true; do
	xsetroot -name "$(free -h | awk '/^Mem:/ {print $3 "/" $2}') | Uptime: $(uptime | awk '{print $3}' | tr -d ',') | $( date )"
	sleep 1
done
