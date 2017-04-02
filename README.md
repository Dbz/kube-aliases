# zsh-kuberenetes

This is an oh-my-zsh plugin to make working with kubernetes easier. It provides a bunch of bash aliases and zsh functions.

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


