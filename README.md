# github-automation-with-terraform

Instalar Cert Manager no Cluster

kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.8.2/cert-manager.yaml

instalar o runner do Github Action no cluster

helm upgrade --install --namespace actions-runner-system --create-namespace\
  --set=authSecret.create=true\
  --set=authSecret.github_token=TOKEN\
  --wait actions-runner-controller actions-runner-controller/actions-runner-controller

criar uma secret para autorizar o pull da imagem runner personalizada

kubectl create secret docker-registry ghcr-credentials \                   ─╯
  --namespace=default \
  --docker-server=ghcr.io \
  --docker-username=matheus-thurler \
  --docker-password=TOKEN