# kube-aliases

This is an oh-my-zsh plugin to make working with kubernetes easier. It provides
a bunch of bash aliases and zsh functions. Docs can be found
[here](https://github.com/Dbz/kube-aliases/blob/master/docs/usage), which
clarifies all aliases.

## Usage

There are a few main features of this plugin. First, there are lots of aliases
to make working with k8s easier. Second, there are bash functions to help with
varias tasks such as switching contexts to use different clusters.

### Aliases

To see a full list of aliases, use

```bash
khelp usage
```

Some common aliases

```bash
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

alias kdd='kubectl delete deployment'
alias kdsd='kubectl describe deployments'
alias ked='kubectl edit deployments'
alias kgd='kubectl get deployments'
alias kgdy='kubectl get deployments -o yaml'

alias kaf='kubectl apply -f'
alias kcf='kubectl create -f'
alias kdf='kubectl delete -f'
alias kef='kubectl edit -f'
alias kdsf='kubectl describe -f'
alias kgf='kubectl get -f'
```

## Installation

### Oh-My-Zsh

```
git clone git@github.com:Dbz/kube-aliases.git ~/.oh-my-zsh/custom/plugins/kube-aliases
echo "plugins+=(kube-aliases)" >> ~/.zshrc
```

You can also manually place `zsh-kuberenetes` inside of `plugins=(...)`

If you have set the `ZSH_CUSTOM` environment variable in your zshrc, then you should modify the git clone directory to be `$ZSH_CUSTOM/plugins/kube-aliases`.

### Antigen

Add `antigen bundle dbz/kube-aliases` to your antigen bundles in your `.zshrc`

### Zgen

Add `zgen load dbz/kube-aliases` to your zgen plugins in your `.zshrc`

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

### Trouble shooting

#### Autocomplete

If there is problems with autocomplete, it may be that kubectl is not on the
path when the plugin is loaded. To fix, load plugins after adding kubectl to
path.
