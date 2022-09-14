# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


############ AnGian customizations #######################

### path

#PATH="/home/angian/tools/apache-maven-3.5.4/bin:$PATH"
PATH="/home/angian/tools/apache-maven-3.8.4/bin:$PATH"

#export JAVA_HOME=/usr/lib/jvm/java-10-oracle
export JAVA_HOME=/home/angian/android-studio/jre

export ANDROID_HOME=/home/angian/android-sdk
export ANDROID_SDK_ROOT=/home/angian/android-sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/tools/bin:$ANDROID_SDK_ROOT/platform-tools

export PATH="$PATH:$(yarn global bin)"
export PATH="$PATH:/home/angian/android-studio/bin"


### keybindings
setxkbmap -option caps:escape

### aesthetics
export TERM=xterm-256color
eval "$(oh-my-posh init bash --config ~/.config/angian.omp.json)"

