FROM ubuntu:22.04
RUN apt-get update && apt-get install sudo && apt-get install -y curl
RUN curl -sfL 'https://raw.githubusercontent.com/orcasecurity/orca-cli/main/install.sh' | bash
