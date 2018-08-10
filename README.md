# zsh-kuberenetes

This is an oh-my-zsh plugin to make working with kubernetes easier. It provides a bunch of bash aliases and zsh functions.

## Usage

There are a few main features of this plugin. First, there are lots of aliases to make working with k8s easier. Second, there are bash functions to help with varias tasks such as switching contexts to use different clusters.

### Aliases

These are the aliases included in zsh-kubernetes:

```bash
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
```

## Environment Variables

There are several environment variables used to make this plugin work for everyone.

1. `ZSH_CUSTOM` Location of the custom folder for [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh).
2. `CURRENT_CLUSTER` is the name of your cluster in AWS
3. `PDXENG_NAMESPACE` is the name of your namespace in pdxeng
4. `AWS_NAMESPACE` is the name of your namespace in AWS
5. `KUBECONFIG` is a path used by kubectl to find kubeconfigs

example:

```
export CURRENT_CLUSTER='symantest8281'
export PDXENG_NAMESPACE='daniel-burt'
export AWS_NAMESPACE='syman'
export KUBECONFIG="/Users/daniel.burt/.kube/config:/Users/daniel.burt/.kube/configs/aws-config:/Users/daniel.burt/Downloads/$CURRENT_CLUSTER/kubeconfig"
```

## Installation

### Oh-My-Zsh

```
git clone git@github.com:Dbz/zsh-kubernetes.git ~/.oh-my-zsh/custom/plugins/zsh-kubernetes
echo "plugins+=(zsh-kubernetes)" >> ~/.zshrc
```

You can also manually place `zsh-kuberenetes` inside of `plugins=(...)`

If you have set the `ZSH_CUSTOM` environment variable in your zshrc, then you should modify the git clone directory to be `$ZSH_CUSTOM/plugins/zsh-kubernetes`.

### Antigen

Add `antigen bundle dbz/zsh-kubernetes` to your antigen bundles in your `.zshrc`

### Zgen

Add `zgen load dbz/zsh-kubernetes` to your zgen plugins in your `.zshrc`

### Aliases for Kubernetes Extensions

#### kubectx
For easy context and namespace switching there is
[kubectx](https://github.com/ahmetb/kubectx). `kubectx` allows users context
switching, and the linked github comes with `kubens` which allows for simple
namespace switching. You can use the following aliases:

```bash
alias kctx='kubectx'
alias kns='kubens'
```
#### Kubernetes Metrics Server

To get some metrics from nodes or pods, you can use [Kubernetes Metrics
Server](https://github.com/kubernetes-incubator/metrics-server). There are 
the aliases

```bash
alias kt='kubectl top'
alias ktn='kubectl top nodes'
alias ktp='kubectl top pods'
```
