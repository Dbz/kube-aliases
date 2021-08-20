export KALIAS=$(dirname $0)
export KRESOURCES=$(dirname $0)/docs/resources
export KSHELL=$(basename $SHELL)
export KALIAS_YAML_PATH=$(dirname $0)/aliases.yaml

bin="$(dirname $0)/bin"
export PATH=${PATH}:${bin}
# source $(dirname $0)/old.zsh

source <(kubectl completion $KSHELL)

# TODO: Probably can be removed
# If aliases file exists source it
generated_alias_file=$(dirname $0)/aliases
if [ -f $generated_alias_file ]; then
  source ${generated_alias_file}
fi

# Additional aliases not covered by generation
alias k="kubectl"
alias kctx="kubectx"
alias kns="kubens"

# TODO: Should be auto generated but they dont need a script anymore
alias kcf="kubectl create -f"
alias kaf="kubectl apply -f"
alias kgf="kubectl get -f"
alias kdelf="kubectl delete -f"
