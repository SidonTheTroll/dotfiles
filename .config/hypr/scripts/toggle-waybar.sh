
#!/bin/bash

# Duration in seconds to show Waybar when toggled
TOGGLE_DURATION=5

# Get the active workspace ID
active_workspace_id=$(hyprctl activeworkspace -j | jq .id)

# Count the number of clients in that workspace
client_count=$(hyprctl clients -j | jq --arg workspace_id "$active_workspace_id" '[.[] | select(.workspace.id == ($workspace_id | tonumber))] | length')

# Print the client count (for debugging)
echo "Number of clients in active workspace: $client_count"

if [[ "$1" == "toggle" ]]; then
    # Temporarily show Waybar for $TOGGLE_DURATION seconds
    waybar &
    sleep $TOGGLE_DURATION
    pkill waybar
    exit 0
fi

# If no windows are open in the active workspace
if [[ "$client_count" -eq 0 ]]; then
    # No windows, show Waybar if it's not already running
    if ! pgrep -x "waybar" > /dev/null; then
        waybar &
        echo "Waybar started as no windows are open."
    fi
else
    # There are windows, hide Waybar if it's running
    if pgrep -x "waybar" > /dev/null; then
        pkill waybar
        echo "Waybar stopped as windows are open."
    fi
fi

