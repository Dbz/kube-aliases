export KALIAS=$(dirname $0)
export KRESOURCES=$(dirname $0)/docs/resources
export KSHELL=$(basename $SHELL)
export KALIAS_YAML_PATH=$(dirname $0)/aliases.yaml

bin="$(dirname $0)/bin"
export PATH=${PATH}:${bin}
# source $(dirname $0)/old.zsh

source <(kubectl completion $KSHELL)

# If aliases file exists source it
generated_alias_file=$(dirname $0)/aliases
if [ -f $generated_alias_file ]; then
  source ${generated_alias_file}
fi

alias k="kubectl"
alias kctx="kubectx"
alias kns="kubens"
