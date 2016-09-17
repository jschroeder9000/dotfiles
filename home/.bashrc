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

source_if_exists "/usr/share/bash-completion/bash_completion"

# ugh...
source_if_exists "/usr/share/git/completion/git-prompt.sh" # arch
source_if_exists "/usr/share/git-core/contrib/completion/git-prompt.sh" # redhat

source_if_exists "$HOME/.homesick/repos/homeshick/homeshick.sh"
source_if_exists "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"

source_if_exists "$HOME/.bashrc.d/alias.sh"
source_if_exists "$HOME/.bashrc.d/env.sh"
source_if_exists "$HOME/.bashrc.d/history.sh"
source_if_exists "$HOME/.bashrc.d/ps1.sh"
