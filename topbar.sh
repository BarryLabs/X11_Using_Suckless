#!/Bin/Bash

	# Weather Command
# curl -s wttr.in/"bristol,ct"?format=1

while true; do
	xsetroot -name "$(free -h | awk '/^Mem:/ {print $3 "/" $2}') | Uptime: $(uptime | awk '{print $3}' | tr -d ',') | $( date )"
	sleep 1
done
