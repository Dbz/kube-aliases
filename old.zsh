KALIAS=$ZSH_CUSTOM/plugins/kube-aliases
KRESOURCES=$ZSH_CUSTOM/plugins/kube-aliases/docs/resources
SHELL_NAME=$(basename $SHELL)

# Auto complete, for bash replace zsh with bash
# For some reason this is sourcing the oh-my-zsh plugin.
source <(kubectl completion $SHELL_NAME)

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

# certificatesigningrequests
alias kgcsr='kubectl get certificatesigningrequests'

# clusterrolebindings
alias kgcrb='kubectl get clusterrolebindings'

# clusterroles
alias kgcr='kubectl get clusterroles'

# componentstatuses
alias kgcs='kubectl get componentstatus'

# configmaps
alias kdcm='kubectl delete configmaps'
alias kdscm='kubectl describe configmaps'
alias kecm='kubectl edit configmaps'
alias kgcm='kubectl get configmaps'
alias kgcmy='kubectl get configmaps -o wide'
alias kgacm='kget_cluster_resources configmaps'

# controllerrevisions
alias kgcrv='kubectl get controllerrevisions'

# Cronjobs
alias kdc='kubectl delete cronjobs'
alias kdsc='kubectl describe cronjobs'
alias kec='kubectl edit cronjobs'
alias kgc='kubectl get cronjobs'
alias kgcw='watch kubectl get cronjobs'
alias kgcy='kubectl get cronjobs -o yaml'
alias kgac='kget_cluster_resources cronjobs'

# customresourcedefinition
alias kgcrd='kubectl get customresourcedefinition'

# daemonsets
alias kdds='kubectl delete daemonsets'
alias kdsds='kubectl describe daemonsets'
alias keds='kubectl edit daemonsets'
alias kgds='kubectl get daemonsets'
alias kgdsw='watch kubectl get daemonsets'
alias kgdsy='kubectl get daemonsets -o yaml'
alias kgads='kget_cluster_resources daemonsets'

# Deployments
alias kdd='kubectl delete deployment'
alias kdsd='kubectl describe deployments'
alias ked='kubectl edit deployments'
alias kgd='kubectl get deployments'
alias kgdw='watch kubectl get deployments'
alias kgdy='kubectl get deployments -o yaml'

# endpoints
alias kgep='kubectl get endpoints'

# events
alias kgev='kubectl get events'

# from file
alias kaf='kubectl apply -f'
alias kcf='kubectl create -f'
alias kdf='kubectl delete -f'
alias kef='kubectl edit -f'
alias kdsf='kubectl describe -f'
alias kgf='kubectl get -f'

# horizontalpodautoscalers
alias kghpa='kubectl get horizontalpodautoscalers'

# Ingress
alias kdi='kubectl delete ingress'
alias kdsi='kubectl describe ingress'
alias kei='kubectl edit ingress'
alias kgai='kget_cluster_resources ingress'
alias kgi='kubectl get ingress'
alias kgiy='kubectl get ingress -o yaml'

# Jobs
alias kdj='kubectl delete job'
alias kdsj='kubectl describe jobs'
alias kej='kubectl edit jobs'
alias kgj='kubectl get jobs'
alias kgjw='watch kubectl get jobs'
alias kgjy='kubectl get jobs -o yaml'
alias kgaj='kget_cluster_resources jobs'

# limitranges
alias kglr='kubectl get limitranges'

# Namespaces
alias kdns='kubectl delete namespaces'
alias kdsns='kubectl describe namespaces'
alias kens='kubectl edit namespaces'
alias kgns='kubectl get namespaces'
alias kgnsy='kubectl get namespaces -o yaml'
alias kns='kubens'

# networkpolicies
alias kgnp='kubectl get networkpolicies'

# Nodes
alias kdsn='kubectl describe nodes'
alias ken='kubectl edit nodes'
alias kgn='kubectl get nodes'
alias kgnw='watch kubectl get nodes'
alias kgny='kubectl get nodes -o yaml'
alias ktn='kubectl top nodes'

# persistentvolumeclaims
alias kdpvc='kubectl delete persistentvolumeclaims'
alias kdspvc='kubectl describe persistentvolumeclaims'
alias kepvc='kubectl edit persistentvolumeclaims'
alias kgapvc='kget_cluster_resources persistentvolumeclaims'
alias kgpvc='kubectl get persistentvolumeclaims'
alias kgpvcy='kubectl get persistentvolumeclaims -o yaml'

# persistentvolumes
alias kdpv='kubectl delete persistentvolumes'
alias kdspv='kubectl describe persistentvolumes'
alias kepv='kubectl edit persistentvolumes'
alias kgpv='kubectl get persistentvolumes'
alias kgpvy='kubectl get persistentvolumes -o yaml'

# poddisruptionbudgets
alias kgpdb='kubectl get poddisruptionbudgets'

# podpreset
alias kgpp='kubectl get podpreset'

# Pods
alias kdp='kubectl delete pod'
alias kdsp='kubectl describe pods'
alias kep='kubectl edit pods'
alias kgap='kget_cluster_resources pods'
alias kgp='kubectl get pods'
alias kgpw='watch kubectl get pods'
alias kgpy='kubectl get pods -o yaml'
alias ktp='kubectl top pods'

# podsecuritypolicies
alias kpsp='kubectl get podsecuritypolicies'

# podtemplates
alias kpt='kubectl get podtemplates'

# replicasets
alias krs='kubectl get replicasets'

# replicationcontrollers
alias kgrc='kubectl get replicationcontrollers'

# resourcequotas
alias kgrq='kubectl get resourcequotas'

# rolebindings
alias kgrb='kubectl get rolebindings'

# roles
alias kgr='kubectl get roles'

# secrets
alias kdssc='kubectl describe secrets'
alias kesc='kubectl edit secrets'
alias kgasc='kget_cluster_resources secrets'
alias kgsc='kubectl get secrets'
alias kgscy='kubectl get secrets -o yaml'

# serviceaccounts
alias kgsa='kubectl get serviceaccounts'

# Services
alias kds='kubectl delete services'
alias kdss='kubectl describe services'
alias kes='kubectl edit services'
alias kgas='kget_cluster_resources services'
alias kgs='kubectl get services'
alias kgsy='kubectl get services -o yaml'

# statefulsets
alias kgss='kubectl get statefulsets'

# Execute a command in a specified pod, default drops user into the shell
alias keit='kubectl exec -it'

kcexec () {
  kubectl exec -it $1 ${2:-bash}
}
kexec () {
  kubectl exec -it $1 ${2:-bash}
}

# Set and use a new context
knc () {
  kc config set-context $1
  kc config use-context $1
}

# TODO: kpf name conflict from sourcing autocomplete
# kpf () {
#   kubectl port-forward $1 9990:9990 --namespace=${2}
# }
