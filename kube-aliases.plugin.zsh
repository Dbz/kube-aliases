KALIAS=$ZSH_CUSTOM/plugins/kube-aliases
KRESOURCES=$ZSH_CUSTOM/plugins/kube-aliases/docs/resources
SHELL_NAME=$(basename $SHELL)

# Auto complete, for bash replace zsh with bash
# For some reason this is sourcing the oh-my-zsh plugin.
source <(kubectl completion $SHELL_NAME)
source ./aliases.sh
