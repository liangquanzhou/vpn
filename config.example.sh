# VPN Configuration
# Copy to ~/.config/vpn/config.sh and customize

# Required: VPN server hostname
VPN_HOST="vpn.example.com"

# Required: Your username
VPN_USER="your-username"

# Required: Authentication group
VPN_GROUP="default"

# Optional: VPN endpoint pattern for route cleanup
# If your VPN load-balances across vpn-1.example.com .. vpn-10.example.com:
VPN_ENDPOINT_PREFIX="vpn-"
VPN_ENDPOINT_SUFFIX=".example.com"
VPN_ENDPOINT_RANGE_START=1
VPN_ENDPOINT_RANGE_END=10

# Optional: IP pattern for cleaning stale routes (awk regex)
# Example: "192\\.168\\." to match 192.168.x.x routes
VPN_ROUTE_PATTERN=""

# OpenConnect options
VPN_NO_DTLS=true
VPN_DPD_TIMEOUT=30
VPN_RECONNECT_TIMEOUT=600
