export BASEPATH=$(dirname "$0")
export ZSH=$BASEPATH/oh-my-zsh
ZSH_THEME="ys"
plugins=(
  colorize
  web-search
)

source $ZSH/oh-my-zsh.sh
source $BASEPATH/applications.zsh
source $BASEPATH/functions.zsh
source $BASEPATH/paths.zsh
source $BASEPATH/aliases.zsh
