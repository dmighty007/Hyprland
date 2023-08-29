
# Enable the subsequent settings only in interactive sessions
#set -x
case $- in
  *i*) ;;
    *) return;;
esac

# User configuration
export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

#: Compilation flags
export ARCHFLAGS="-arch x86_64"

#: ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"
#: Terminal
export TERM=xterm-256color

##################### bash functions ######################
source ~/.bash_functions

##################### bash aliases #########################

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/dibya/Soft/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/dibya/Soft/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/dibya/Soft/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/dibya/Soft/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<
eval "$(oh-my-posh init bash --config '/home/dibya/.config/oh-my-posh/themes/night-owl.omp.json')"
# echo '
# ██████╗░██╗██████╗░██╗░░░██╗███████╗███╗░░██╗██████╗░██╗░░░██╗██╗░██████╗
# ██╔══██╗██║██╔══██╗╚██╗░██╔╝██╔════╝████╗░██║██╔══██╗██║░░░██║╚█║██╔════╝
# ██║░░██║██║██████╦╝░╚████╔╝░█████╗░░██╔██╗██║██║░░██║██║░░░██║░╚╝╚█████╗░
# ██║░░██║██║██╔══██╗░░╚██╔╝░░██╔══╝░░██║╚████║██║░░██║██║░░░██║░░░░╚═══██╗
# ██████╔╝██║██████╦╝░░░██║░░░███████╗██║░╚███║██████╔╝╚██████╔╝░░░██████╔╝
# ╚═════╝░╚═╝╚═════╝░░░░╚═╝░░░╚══════╝╚═╝░░╚══╝╚═════╝░░╚═════╝░░░░╚═════╝░
#
# ████████╗███████╗██████╗░███╗░░░███╗██╗███╗░░██╗░█████╗░██╗░░░░░
# ╚══██╔══╝██╔════╝██╔══██╗████╗░████║██║████╗░██║██╔══██╗██║░░░░░
# ░░░██║░░░█████╗░░██████╔╝██╔████╔██║██║██╔██╗██║███████║██║░░░░░
# ░░░██║░░░██╔══╝░░██╔══██╗██║╚██╔╝██║██║██║╚████║██╔══██║██║░░░░░
# ░░░██║░░░███████╗██║░░██║██║░╚═╝░██║██║██║░╚███║██║░░██║███████╗
# ░░░╚═╝░░░╚══════╝╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═╝╚═╝░░╚══╝╚═╝░░╚═╝╚══════╝
# '
echo " _______  __       __      
|       \|  \     /  \     
| ▓▓▓▓▓▓▓\ ▓▓\   /  ▓▓     
| ▓▓  | ▓▓ ▓▓▓\ /  ▓▓▓     
| ▓▓  | ▓▓ ▓▓▓▓\  ▓▓▓▓     
| ▓▓  | ▓▓ ▓▓\▓▓ ▓▓ ▓▓     
| ▓▓__/ ▓▓ ▓▓ \▓▓▓| ▓▓     
| ▓▓    ▓▓ ▓▓  \▓ | ▓▓     
 \▓▓▓▓▓▓▓ \▓▓      \▓▓     
" | lolcat -S 500
