alias kube='kubectl'
alias kc='kubectl'
alias kgp='kubectl get pods'
alias kgd='kubectl get deployments'
alias kgs='kubectl get services'
alias kgi='kubectl get ingress'
alias kgn='kubectl get namespace'
alias kcc='kubectl config get-contexts'
alias kdp='kubectl delete pod'
alias kdd='kubectl delete deployment'
alias kdf='kubectl delete -f'
alias klf='kubectl logs -f'
alias kaf='kubectl apply -f'
alias kra='krender; kapply'

ksc () {
  kubectl config set-context "${2:-$(kubectl config current-context)}" --namespace "${1:-syman}"
}

kuc () {
  kubectl config use-context "$1" --namespace="${2:-syman}"
}

krender () {
  fasd_cd scylla
  ruby lib/scylla_lib/kube/render_resources.rb config/ . kubernetes "${1:-2017.04.017}"
}

kapply () {
  fasd_cd scylla
  kc apply -f k8s_resources/dev/kubernetes/syman_components/ -R --namespace="${1:-syman}"
}

