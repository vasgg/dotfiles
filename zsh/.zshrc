# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

HIST_STAMPS="dd.mm.yyyy"
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000

HISTORY_IGNORE="(ls|cd|pwd|exit|clear|c|h) *"

setopt EXTENDED_HISTORY      # Делать записи в файле истории в формате ':start:elapsed;command'.
setopt INC_APPEND_HISTORY    # Писать данные в файл истории немедленно, а не тогда, когда осуществляется выход из оболочки.
setopt SHARE_HISTORY         # Использовать во всех сессиях общее хранилище истории.
setopt HIST_IGNORE_DUPS      # Не делать повторную запись о только что записанном событии.
setopt HIST_IGNORE_ALL_DUPS  # Удалять старую запись о событии в том случае, если новое событие является дубликатом старого.
setopt HIST_IGNORE_SPACE     # Не делать записи о командах, начинающихся с пробела.
setopt HIST_SAVE_NO_DUPS     # Не записывать дубликаты событий в файл истории.
setopt HIST_VERIFY           # Перед выполнением команд показывать записи о них из истории команд.
setopt APPEND_HISTORY        # Добавлять записи к файлу истории (по умолчанию).
setopt HIST_NO_STORE         # Не хранить записи о командах history.
setopt HIST_REDUCE_BLANKS    # Убирать лишние пробелы из командных строк, добавляемых в историю.

# Shell behavior
setopt NO_BEEP               # Без звуковых сигналов.
setopt AUTO_CD               # Перейти в каталог, просто набрав его имя (без cd).
setopt CORRECT               # Предлагать исправление опечаток в командах.
setopt GLOB_DOTS             # Матчить dot-файлы без явного .* в паттернах.
setopt INTERACTIVE_COMMENTS  # Разрешить комментарии (#) в интерактивной оболочке.

# Locale
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Completions from brew
FPATH="$(brew --prefix)/share/zsh-completions:$FPATH"
FPATH="$(brew --prefix)/share/zsh/site-functions:$FPATH"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git)


source $ZSH/oh-my-zsh.sh

# User configuration
alias _='sudo'
alias ip="curl -s ipinfo.io | jq -r '.ip'"
alias quit='exit'
alias kill!='killall'

alias week="date +%V"
alias speedtest="wget -O /dev/null http://speed.transip.nl/100mb.bin"

# eza — современная замена ls с иконками и git-статусом
alias ls='eza --icons'
alias ll='eza -la --icons --git'
alias lt='eza -la --icons --git --tree --level=2'
alias cat='bat --paging=never'
alias desktop='cd ~/Desktop'
alias documents='cd ~/Documents'
alias downloads='cd ~/Downloads'
alias showhidden='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidehidden='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias shutdown='sudo shutdown -h now'
alias restart='sudo shutdown -r now'
alias emptytrash='sudo rm -rf ~/.Trash/*'

alias vi='nvim'
alias vim='nvim'

alias brewu='brew update; brew upgrade'
alias brewi='brew install'
alias brews='brew search'

alias ga='git add'
alias gs='git status'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log'
alias gco='git checkout'
alias gd='git diff'
alias gcl='git clone'
alias gpull='git pull'

alias jn='jupyter notebook'

alias l='eza --icons -1'
alias grep='grep --color=auto'
alias df='df -h'
alias du='du -h -d 1'
alias mkdir='mkdir -p'
alias cp='cp -i'
alias mv='mv -i'
alias h='history'
alias c='clear'
alias e='nvim ~/.zshrc'
alias blink='blink1-tool'

export EDITOR="subl -n -w"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


[[ -f ~/projects/work/openrc/lux-4 ]] && source ~/projects/work/openrc/lux-4

. "$HOME/.local/bin/env"

[[ -f ~/.secrets ]] && source ~/.secrets

# Docker CLI completions (fpath only — compinit already called by Oh My Zsh)
fpath=(/Users/vasilii.gavrilov/.docker/completions $fpath)

# --- Plugins loaded after Oh My Zsh ---

# zsh-autosuggestions: показывает предложения из истории серым текстом
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# fzf: fuzzy-поиск по истории (Ctrl+R), файлам (Ctrl+T), каталогам (Alt+C)
source <(fzf --zsh)
export FZF_DEFAULT_OPTS="--height=40% --layout=reverse --border --info=inline"

# zoxide: умный cd — запоминает частые каталоги. Используй: z <часть_имени>
eval "$(zoxide init zsh)"

# fast-syntax-highlighting: подсветка синтаксиса (замена zsh-syntax-highlighting)
source $(brew --prefix)/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
