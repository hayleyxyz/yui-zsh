# DO NOT INVOKE THIS FILE DIRECTLY
# Include it in other scripts
# e.g source functions.zsh

RED='\e[31m'
CYAN='\e[36m'
GREEN='\e[32m'
YELLOW='\e[93m'
NC='\e[39m' # No Color

function info {
    printf "\r[${CYAN}INFO${NC}] $1\n"
}

function success {
    printf "\r[${GREEN}SUCCESS${NC}] $1\n"
}

function warning {
    printf "\r[${YELLOW}WARNING${NC}] $1\n"
}

function error {
  printf "\r[${RED}ERROR${NC}] $1\n"
}

function inprog {
    printf "[...] $1..."
}

function strip_leading_trailing_colon {
    return $(sed -e 's/^:*//' -e 's/:*$//' <<< "$1")
}

function ltrim() {
    sed -e 's/^$2//' <<< '$1'
}

function append_path {
    for p in "$@"
    do
        if [ -d $p ];
        then PATH="$PATH:$p"
      else error "$p does not exist"
        fi
    done

    : PATH=strip_leading_trailing_colon $PATH
}

function prepend_path {
    for p in "$@"
    do
        if [ -d $p ];
        then PATH="$p:$PATH"
      else error "$p does not exist"
        fi
    done

    : PATH=strip_leading_trailing_colon $PATH
}

function cleanclipboard {
    pbpaste | pbcopy
    pbpaste
}

function b64decode {
    for i in $@
    do
        echo "$i" | base64 --decode
    done
}