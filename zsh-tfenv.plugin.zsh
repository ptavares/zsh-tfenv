#!/usr/bin/env zsh

#####################
# COMMONS
#####################
autoload colors

#########################
# CONSTANT
#########################

GITHUB="https://github.com"
BOLD="bold"
NONE="none"

#########################
# PLUGIN MAIN
#########################

[[ -z "$TFENV_HOME" ]] && export TFENV_HOME="$HOME/.tfenv"

#########################
# Functions
#########################

_zsh_tfenv_log() {
  local font=$1
  local color=$2
  local msg=$3

  if [ $font = $BOLD ]
  then
    echo $fg_bold[$color] "[zsh-tfenv-plugin] $msg" $reset_color
  else
    echo $fg[$color] "[zsh-tfenv-plugin] $msg" $reset_color
  fi
}

_zsh_tfenv_install() {
  _zsh_tfenv_log $NONE "blue" "#################################"
  _zsh_tfenv_log $BOLD "blue" "Installing tfenv..." 
  git clone "${GITHUB}/tfutils/tfenv.git" "${TFENV_HOME}" >> /dev/null
  _zsh_tfenv_log $BOLD "green" "Install OK"
  _zsh_tfenv_log $NONE "blue" "#################################"
}

update_zsh_tfenv() {
  _zsh_tfenv_log $NONE "blue" "#################################"
  _zsh_tfenv_log $BOLD "blue" "Updating tfenv..."

  pushd "${TFENV_HOME}" > /dev/null
  if git pull --rebase --stat origin master
    then
      _zsh_tfenv_log $BOLD "green" "tfenv has been updated and/or is at the last version."
      popd > /dev/null
    else
      _zsh_tfenv_log $BOLD "red" "Error on updating. Please try again later."
  fi
  _zsh_tfenv_log $NONE "blue" "#################################"

  unset _zsh_tfenv_log
}

_zsh_tfenv_load() {
    # export PATH
    export PATH="$TFENV_HOME/bin:$PATH"
}


# install tfenv if it isnt already installed
[[ ! -f "$TFENV_HOME/bin/tfenv" ]] && _zsh_tfenv_install

# load tfenv if it is installed
if [[ -f "$TFENV_HOME/bin/tfenv" ]]; then
    _zsh_tfenv_load
fi

unset -f _zsh_tfenv_install _zsh_tfenv_load