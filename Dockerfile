FROM summerwind/actions-runner:latest
USER root
RUN apt-get update && apt-get install -y curl gnupg
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
RUN curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
RUN rm -rf /var/lib/apt/lists/*
RUN chown -R 1001:1001 /home/runner
USER 1001