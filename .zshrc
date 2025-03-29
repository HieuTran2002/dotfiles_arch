
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/usr/sbin
export PATH=$HOME/gcc-arm-none-eabi/bin:$PATH
export PATH=/home/theuser/stlink/bin:$PATH
export PATH=/home/theuser/neovim/build/bin:$PATH

# Zig
export PATH=/home/theuser/zig-linux-x86_64-0.13.0:$PATH


# gitui
export PATH=/home/theuser/gitui/release:$PATH

# Golang
# export PATH=/home/theuser/go/pkg/bin:$PATH
export PATH=$PATH:/usr/local/go/bin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# obs
export QT_QPA_PLATFORM=wayland

# autoload -U compinit; compinit
# zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
# zstyle ':completion:*' menu select



eval $(dircolors ~/.dircolors)

ZSH_THEME="jnrowe"

plugins=(git)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi


source ~/.config/.aliases
source ~/.config/custome-cli-cmd/startup.sh
source ~/.config/custome-cli-cmd/cdd.sh
source ~/.config/custome-cli-cmd/cmux.sh
source ~/.config/custome-cli-cmd/variable.sh

# enable starship
eval "$(starship init zsh)"
#
# enable zoxide
eval "$(zoxide init zsh)"
export PATH=/home/theuser/.local/bin:/home/theuser/.cargo/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:$PATH

function start_8266(){
    export IDF_PATH="/home/theuser/esp8266/ESP8266_RTOS_SDK"
    . $IDF_PATH/export.sh
}

alias get-idf='. /home/theuser/esp/esp-idf-v5.3.1/export.sh'

# Opencv
export QT_QPA_PLATFORM=xcb
 
# Add this to ~/.bashrc or ~/.bash_profile
conda_env() {
    source ~/miniconda3/bin/activate "$@"
}

get_idf() {
    . $HOME/esp/esp-idf/export.sh
}

fastfetch -l small
