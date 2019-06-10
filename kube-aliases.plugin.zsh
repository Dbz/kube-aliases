export KALIAS=$(dirname $0)
export KRESOURCES=$(dirname $0)/docs/resources
export KSHELL=$(basename $SHELL)

bin="$(dirname $0)/bin"
export PATH=${PATH}:${bin}
source $(dirname $0)/old.zsh
