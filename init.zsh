export YUI_ZSH_BASEPATH=$(dirname "$0")
export ZSH=$YUI_ZSH_BASEPATH/oh-my-zsh
ZSH_THEME="ys"
plugins=(
  colorize
  web-search
  timer
  sudo
  adb
)

source $ZSH/oh-my-zsh.sh
source $YUI_ZSH_BASEPATH/applications.zsh
source $YUI_ZSH_BASEPATH/functions.zsh
source $YUI_ZSH_BASEPATH/paths.zsh
source $YUI_ZSH_BASEPATH/aliases.zsh
source $YUI_ZSH_BASEPATH/variables.zsh
source $YUI_ZSH_BASEPATH/fzf.zsh