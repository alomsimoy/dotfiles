set -o vi

alias say='echo "$1" | espeak -s 120 2>/dev/null'
alias roipot-backend-ssh='ssh -p 22 -i "~/.keys/roipot-backend-test.pem" ubuntu@ec2-52-57-138-200.eu-central-1.compute.amazonaws.com'
# alias open='xdg-open'
alias vim="nvim"

# function open {
#   xdg-open "$@"
# }
# export -f open

alias open="xdg-open"

alias ytd='youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s"'

function addmusic {
  f=playlist.txt
  c=`cat $f; xclip -selection c -o`
  echo "$c" | awk '!a[$0]++' > $f
}
export -f addmusic

export PATH="$HOME/.node_modules/bin:/usr/bin/node:$PATH"
export VAGRANT_HOME="$HOME/Data/Vagrant"

alias whatsapp='/usr/bin/chromium --profile-directory=Default --app-id=hnpfjngllnobngcgfapefoaidbinmjnm'

alias gmail='/usr/bin/chromium --profile-directory=Default --app-id=kmhopmchchfpfdcdjodmpfaaphdclmlj'

alias postman='/usr/bin/chromium --profile-directory=Default --app-id=fhbjgbiflinjbdggehcddcbncdddomop'

function mailing {
  whatsapp &
  gmail &
  thunderbird &
  slack &
}
