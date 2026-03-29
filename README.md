# vpn

OpenConnect VPN connection manager for macOS with automatic DNS healing, route cleanup, and reconnection support.

## Features

- **DNS Auto-Repair**: Automatically detects and fixes DNS issues before connecting (tries DHCP first, falls back to public DNS)
- **Route Cleanup**: Removes stale VPN routes that can cause connectivity issues after disconnection
- **Reconnection**: Configurable automatic reconnection on connection drops
- **Simple Interface**: Single command with intuitive subcommands

## Install

### Homebrew

```bash
brew install liangquanzhou/tap/vpn
```

### Manual

```bash
git clone https://github.com/liangquanzhou/vpn.git
cd vpn
make install  # installs to /usr/local/bin
```

## Setup

Create your configuration file:

```bash
mkdir -p ~/.config/vpn
cp config.example.sh ~/.config/vpn/config.sh
# Edit with your VPN details:
vi ~/.config/vpn/config.sh
```

You can also set a custom config path via the `VPN_CONFIG` environment variable.

## Usage

```bash
vpn              # connect (default)
vpn connect      # connect to VPN
vpn disconnect   # disconnect from VPN
vpn status       # check connection status
vpn clean        # clean up stale routes
```

Short aliases: `vpn c`, `vpn d`, `vpn s`.

## Dependencies

- [openconnect](https://www.infradead.org/openconnect/) - `brew install openconnect`
- macOS (uses `networksetup`, `route`, `dscacheutil`)

## License

MIT
