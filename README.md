# zsh-kuberenetes

This is an oh-my-zsh plugin to make working with kubernetes easier. It provides a bunch of bash aliases and zsh functions.

## Usage

There are a few main features of this plugin. First, there are lots of aliases to make working with k8s easier. Second, there are bash functions to help with varias tasks such as switching contexts to use different clusters.

### Aliases

These are the aliases included in zsh-kubernetes:

```
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
```

### Bash functions

1. `kncaws` sets your kubectl kubeconfig to the cluster in `$CURRENT_CLUSTER` and the namespace in `$AWS_NAMESPACE`

## Environment Variables

There are several environment variables used to make this plugin work for everyone.

1. `CURRENT_CLUSTER` is the name of your cluster in AWS
1. `PDXENG_NAMESPACE` is the name of your namespace in pdxeng
1. `AWS_NAMESPACE` is the name of your namespace in AWS
1. `KUBECONFIG` is a path used by kubectl to find kubeconfigs

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


