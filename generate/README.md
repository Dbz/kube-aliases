# Generate

- [Generate](#generate)
- [Contributing](#contributing)
 
This go package builds takes a yaml file and generates `kubectl` aliases.

An example yaml file can be found below.

```yaml
# Kubernetes Resources
resources:
  pods:
    short: p

# Commands to add to all resources
cmds:
  - short: g
    cmd: get

# Any other aliases to be generated
additional:
  - short: wkgp
    cmd: "watch kubectl get pods"
```

Which will generate the following file

```bash
alias kgp="kubectl get pods"
alias wkgp="watch kubectl get pods"
```

by running 

```bash
make
bin/generate-kube-aliases alias.yaml aliases
```

# Contributing

TODO
