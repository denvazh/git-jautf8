#############################################################
#
# Author:       Denis Vazhenin
# Date:		10/04/2012
#
# Purpose:      Init script for git nkf custom wrapper
# Note:		uses relative paths to self,
# 		thus it is possible to call it from anywhere
#
#############################################################

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

# Add current folder to the PATH
GIT_JAUTF8_DIR=$DIR
GIT_JAUTF8_BIN="${GIT_JAUTF8_DIR}/bin"
GIT_JAUTF8_MAN="${GIT_JAUTF8_DIR}/share/man"
GIT_JAUTF8_BASH_COMPLETION="${GIT_JAUTF8_DIR}/etc/bash_completion.d/git-jautf8-completion.bash"

# Exporting necessary variables for script and manpage
export PATH=$PATH:$GIT_JAUTF8_BIN
export MANPATH=$MANPATH:$GIT_JAUTF8_MAN

# Enabling bash_completion for custom script
source $GIT_JAUTF8_BASH_COMPLETION
