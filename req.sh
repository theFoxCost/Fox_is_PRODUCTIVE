#!/bin/sh

echo "Starting Alpine Web Server Tool Installer..."
sleep 1

# List of tools (Alpine package names)
TOOLS="
git
nodejs
npm
python3
py3-pip
openssh
net-tools
jq
curl
wget
nmap
tree
iperf3
netcat-openbsd
"

# Loop to install each tool with a delay
for tool in $TOOLS; do
    echo "Installing $tool..."
    apk add --no-cache $tool
    sleep 2
done

# Create a Markdown file describing all tools
create_tool_doc() {
cat <<EOF > tools.md
# 🛠 Installed Tools - Alpine Web Server

| Tool           | Description                                  |
|----------------|----------------------------------------------|
| git            | Version control system                       |
| nodejs + npm   | JavaScript runtime + Node package manager    |
| python3        | Python 3 interpreter                         |
| py3-pip        | Python package installer                     |
| openssh        | Secure shell access                          |
| net-tools      | Classic networking tools (`ifconfig`, etc.)  |
| jq             | JSON parser for the CLI                      |
| curl           | Transfer data from or to a server            |
| wget           | Download files from the internet             |
| nmap           | Network scanner and host discovery           |
| tree           | Directory structure visualizer               |
| iperf3         | Network bandwidth testing tool               |
| netcat         | TCP/IP debugging and testing tool            |

EOF

    echo "✅ Documentation written to tools.md"
}

create_tool_doc
