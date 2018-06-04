ZSH_THEME="agnoster"

export TERM="xterm-256color"
export PATH="$HOME/.node_modules/bin:/usr/bin/node:$PATH"

autoload -Uz compinit promptinit
compinit
promptinit

prompt walters

setopt COMPLETE_ALIASES
setopt interactivecomments
setopt CORRECT
setopt RM_STAR_WAIT

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "$key[Up]"   ]] && bindkey -- "$key[Up]"   up-line-or-beginning-search
[[ -n "$key[Down]" ]] && bindkey -- "$key[Down]" down-line-or-beginning-search

export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

# source .oh-my-zsh/lib/alias.zsh

source ~/.zsh_aliases

# alias open="xdg-open"
# alias ytd='youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s"'
# alias whatsapp='/usr/bin/chromium --profile-directory=Default --app-id=hnpfjngllnobngcgfapefoaidbinmjnm'
# alias gmail='/usr/bin/chromium --profile-directory=Default --app-id=kmhopmchchfpfdcdjodmpfaaphdclmlj'
# alias postman='/usr/bin/chromium --profile-directory=Default --app-id=fhbjgbiflinjbdggehcddcbncdddomop'
