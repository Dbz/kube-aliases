# kube-aliases

kube-aliases comes with a comprehensive set of aliases for Kubernetes. If desired,
there is also a utility tool to generate custom alias or to change the aliases
automatically.

# Usage

## General Alias Rules

In general the defaults follow the following conventions:

```bash
k           # kubectl
kc<r>       # kubectl create <resource>, e.g. kcd for kubectl create deployment
kdel<r>     # kubectl delete <resource>, e.g. kgp for kubectl delete pods
kd<r>       # kubectl describe <resource>, e.g. kdsp for kubectl describe pod
ke<r>       # kubectl edit <resource>, e.g. kgp for kubectl edit pods
kg<r>       # kubectl get <resource>, e.g. kgp for kubectl get pods
kga<r>      # kubectl get --all-namespaces -o wide <resource>, e.g. kgap for kubectl --all-namespaces -o wide get pods
```

## Generating Aliases

Want to generate custom aliases? Install the latest `generate-kube-aliases`
from releases. Using our `aliases.yaml` file as a base run

```bash
generate-kube-aliases aliases.yaml ~/.aliases
```

Then the aliases can be sourced 
```bash
source ${HOME}/.aliases
```

### Customizing Aliases

#### resources

Resources defines Kubernetes resources and what the short letter representation
should be.

```yaml
resources:
  <resource>:
    short: <short name>
```

For example

```yaml
resources:
  pods:
    short: p
```

Which will generate aliases `alias k<cmd>p=kubectl <cmd> pod`.

####  cmds

`cmd` will generate the main command on all resources.

```yaml
cmd:
  - short: <short name>
    cmd: <cmd>
    # Optional
    prefix:
      short: <short name>
      cmd: <cmd>
    # Optional
    suffix:
      short: <short name>
      cmd: <cmd>
```

For example:

```yaml
cmd:
  - short: g
    cmd: get
```

Will generate all get commands for specified resource, i.e. `alias kgp="kubectl get pods"`
Prefix and suffix will generate commands before and after the alias respectively.



#### additional

Any other aliases can be generated by the following

```yaml
additional:
  - short <short>
    cmd: <cmd>
```

The following will generate `alias eh="echo hello"`

```yaml
additional:
  - short eh
    cmd: "echo hello"
```

# Installation

To simply grab a bunch of aliases without customization simply get the
`aliases` file and source it in your `bashrc` or `zshrc` file.

## Generate Aliases

To easily customize the generated aliases, download `generate-kube-aliases` to
your any of your bins.

### AUR

Coming soon

