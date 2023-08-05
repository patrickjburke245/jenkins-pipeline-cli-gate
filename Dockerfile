FROM ubuntu:22.04
apt-get update && apt-get install sudo && apt-get install -y curl
curl -sfL 'https://raw.githubusercontent.com/orcasecurity/orca-cli/main/install.sh' | bash
orca-cli -p ${PROJECT_KEY} image scan ${IMAGE_NAME}
