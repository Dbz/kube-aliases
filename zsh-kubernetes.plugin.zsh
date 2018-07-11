KALIAS=$ZSH_CUSTOM/plugins/zsh-kubernetes

# Contexts
alias kcc='kubectl config get-contexts'
alias kctx='kubectx'

# Core
alias k='kubectl'
alias kc='kubectl'
alias kube='kubectl'
alias kd='kubectl delete'
alias kds='kubectl describe service'
alias ke='kubectl edit'
alias kg='kubectl get'
alias kga='kubectl get --all-namespaces'
alias kl='kubectl logs'
alias kcl='kubectl logs'
alias klf='kubectl logs -f'
alias kra='krender; kapply'

# Cronjobs
alias kdsc='kubectl describe cronjobs'
alias kec='kubectl edit cronjobs'
alias kgc='kubectl get cronjobs'
alias kgcy='kubectl get cronjobs -o yaml'
alias kgac='get_cluster_resources cronjobs'

# Deployments
alias kdd='kubectl delete deployment'
alias kdsd='kubectl describe deployments'
alias ked='kubectl edit deployments'
alias kgd='kubectl get deployments'
alias kgdy='kubectl get deployments -o yaml'

# From file
alias kaf='kubectl apply -f'
alias kcf='kubectl create -f'
alias kdf='kubectl delete -f'
alias kef='kubectl edit -f'
alias kdsf='kubectl describe -f'
alias kgf='kubectl get -f'

# Ingress
alias kdi='kubectl delete ingress'
alias kgi='kubectl get ingress'
alias kei='kubectl edit ingress'
alias kgiy='kubectl get ingress -o yaml'
alias kdsi='kubectl describe ingress'
alias kgai='get_cluster_resources ingress'

# Jobs
alias kdj='kubectl delete job'
alias kdsj='kubectl describe jobs'
alias kej='kubectl edit jobs'
alias kgj='kubectl get jobs'
alias kgjy='kubectl get jobs -o yaml'
alias kgaj='get_cluster_resources jobs'

# Namespaces
alias kdns='kubectl delete namespaces'
alias kdsns='kubectl describe namespaces'
alias kens='kubectl edit namespaces'
alias kgns='kubectl get namespaces'
alias kgnsy='kubectl get namespaces -o yaml'
alias kns='kubens'

# Nodes
alias kdsn='kubectl describe nodes'
alias ken='kubectl edit nodes'
alias kgn='kubectl get nodes -o wide'
alias kgny='kubectl get nodes -o yaml'
alias ktn='kubectl top nodes'

# Pods
alias kdp='kubectl delete pod'
alias kdsp='kubectl describe pods'
alias kep='kubectl edit pods'
alias kgap='get_cluster_resources pods'
alias kgp='kubectl get pods'
alias kgpy='kubectl get pods -o yaml'
alias ktp='kubectl top pods'

# Services
alias kdss='kubectl describe services'
alias kes='kubectl edit services'
alias kgas='get_cluster_resources services'
alias kgs='kubectl get services'
alias kgsy='kubectl get services -o yaml'

# Execute a command in a specified pod, default drops user into the shell
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

# Get all resources (e.g. pod) in all namespaces
get_cluster_resources () {
  kubectl get $1 -o wide --all-namespaces ${@:2}
}

# Find a resource (e.g. a pod by name)
kfind () {

  kubectl get all --all-namespaces | grep -i -E --color=always "${@}|$"

}

khelp () {

case $1 in
  commands|cmd)
    cat $KALIAS/docs/usage
  ;;
  resources|res)
    cat $KALIAS/docs/resources
  ;;
  *)
    echo "usage: khelp (cmd|res)"
  ;;
esac

}

# Get the pod names of all pods in a namespace.
kgpn () {
  echo $(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{" "}}{{end}}')
}

# Delete all pods within a namespace.
kdap () {
  read "kdelete?This will attempt to delete all pods within the namespace. Do you want to continue?(y/N) "
  if [[ "${kdelete}" =~ ^[yY]$ ]]; then
    kubectl delete pods $(kgpn)
  fi
}
