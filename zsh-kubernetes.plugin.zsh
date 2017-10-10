alias kube='kubectl'
alias kc='kubectl'
alias kgp='kubectl get pods'
alias kgd='kubectl get deployments'
alias kgs='kubectl get services'
alias kgj='kubectl get jobs'
alias kgi='kubectl get ingress'
alias kgn='kubectl get namespace'
alias kcc='kubectl config get-contexts'
alias kdp='kubectl delete pod'
alias kdd='kubectl delete deployment'
alias kdj='kubectl delete job'
alias kdf='kubectl delete -f'
alias klf='kubectl logs -f'
alias kcl='kubectl logs'
alias kaf='kubectl apply -f'
alias kra='krender; kapply'

kcexec () {
  kubectl exec -it "$1" "${2:-bash}"
}

knc () {
  kc config set-context kube-aws-"$1"-context --namespace $AWS_NAMESPACE
  kc config use-context kube-aws-"$1"-context --namespace $AWS_NAMESPACE
}

kncaws () {
  kc config set-context kube-aws-"$CURRENT_CLUSTER"-context --namespace $AWS_NAMESPACE
  kc config use-context kube-aws-"$CURRENT_CLUSTER"-context --namespace $AWS_NAMESPACE
}

kuc () {
  kubectl config set-context "$1" --namespace="${2:-$PDXENG_NAMESPACE}"
  kubectl config use-context "$1" --namespace="${2:-$PDXENG_NAMESPACE}"
}

krender () {
  fasd_cd scylla
  ruby lib/scylla_lib/kube/render_resources.rb config/ . kubernetes "${1:-2017.04.017}"
}

kapply () {
  fasd_cd scylla
  kc apply -f k8s_resources/dev/kubernetes/$namespace_components/ -R --namespace="${1:-$PDXENG_NAMESPACE}"
}

kpf () {
  kubectl port-forward "$1" 9990:9990 --namespace="${2:-$PDXENG_NAMESPACE}"
}

