# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bureau"
#ZSH_THEME="kardan"
#ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#alias python="python2"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"
XMODIFIERS=@im=fcitx

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git, zsh-syntax-highlighting)
plugins=() 

source $ZSH/oh-my-zsh.sh
#enbal gruvbox terminal theme
export CLICOLOR=1
export ANDROID_HOME=/usr/local/opt/android-sdk
# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl
export PATH=~/npm-global/bin:$PATH 
export PATH=/Applications/Juno.app/Contents/Resources/app/julia/bin:$PATH 
export PATH=/usr/texbin:$PATH 
export PATH=~/.gem/ruby/2.2.0/bin:$PATH 
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
alias auto="xrandr --output VGA-1 --auto && xrandr --output LVDS-1 --auto"
alias xvpri="xrandr --output VGA-0 --primary"
alias right="xrandr --output VGA-0 --right-of LVDS-0 --auto"
alias left="xrandr --output VGA-1 --left-of LVDS-1 --auto"
alias slime="/home/jiale/sublimetext2/sublimetext"
alias SHS="python2 -m SimpleHTTPServer"
alias rr="/home/jialezhang/workspace/code/Rlang/R-patched/bin/R"
alias ph="ps -eo comm,pmem --sort -pmem | head"
alias xopens="xinit /usr/bin/openbox-session"
alias xfceo="startxfce4 & killall xfwm4 & openbox & exit"
alias crvm="rm -f ~/.zcompdump"
alias rmouse="sudo rmmod psmouse"
alias amouse="sudo modprobe psmouse"
alias emacs="export LC_CTYPE=zh_CN.UTF-8;emacs";
alias vim="export LC_CTYPE=zh_CN.UTF-8;vim";
alias fuck='eval $(thefuck $(fc -ln -1))'
# for fsad
# alias a='fasd -a'        # any
# alias s='fasd -si'       # show / search / select
# alias d='fasd -d'        # directory
# alias f='fasd -f'        # file
# alias sd='fasd -sid'     # interactive directory selection
# alias sf='fasd -sif'     # interactive file selection
# alias z='fasd cd -d'     # cd, same functionality as j in autojump
# alias zz='fasd cd -d -i' # cd with interactive selection

alias relax="systemctl suspend"
alias qcloud="sudo openvpn --config ~/workspace/code/front-end/MajorSite/qingcloud/rtr-nje2zjeq-linux-sample.conf"
alias jxtinc="sudo /usr/local/Cellar/tinc/1.0.25/sbin/tincd -c /usr/local/Cellar/tinc/1.0.25/sbin/tinc_jialezhang -D -d 3"

export TZ=Asia/Shanghai
export CHROME_BIN=google-chrome-stable
export PATH=$PATH:~/.cabal/bin:~/.xmonad/bin
export PATH="/usr/local/Cellar/tinc/1.0.25/sbin:$PATH"
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
#alias for cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"

#alias for cnpm
alias cnpm="npm --registry=https://r.cnpmjs.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://cnpmjs.org/mirrors/node \
  --userconfig=$HOME/.cnpmrc"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="/Users/gkjiale/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# tmux_init()
# {
#     tmux new-session -s "jiale" -d -n "local"    # 开启一个会话
#     tmux new-window -n "gkjiale"          # 开启一个窗口
#     tmux split-window -h                # 开启一个竖屏
#     tmux split-window -v                # 开启一个横屏
#     # tmux split-window -v "top"          # 开启一个横屏,并执行top命令
#     tmux -2 attach-session -d           # tmux -2强制启用256color，连接已开启的tmux
# }

# 判断是否已有开启的tmux会话，没有则开启
# if which tmux 2>&1 >/dev/null; then
#     test -z "$TMUX" && (tmux attach || tmux_init)
# fi