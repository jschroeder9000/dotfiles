#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source_if_exists() {
  if [[ -s $1 ]]
  then
    source $1
    return 0
  else
    return 1
  fi
}

source_if_exists "$HOME/.homesick/repos/homeshick/homeshick.sh"
source_if_exists "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"

source_if_exists "$HOME/.bashrc.d/alias.sh"
source_if_exists "$HOME/.bashrc.d/history.sh"
