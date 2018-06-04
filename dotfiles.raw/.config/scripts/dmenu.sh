#!/bin/bash
cachedir=${XDG_CACHE_HOME:-"$HOME/.cache"}
aliasfile=~/.zsh_aliases
functionsfile=~/.zsh_aliases

if [ -d "$cachedir" ]; then
	cache=$cachedir/dmenu_run
else
	cache=$HOME/.dmenu_cache # if no xdg dir, fall back to dotfile in ~
fi

if [ -f $aliasfile ]; then
    aliases=( $aliasfile )
fi

if [ $functionsfile ]; then
  functions=( $functionsfile )
fi

source $aliases

cmd=`(
	IFS=:
 if stest -dqr -n "$cache" $PATH || stest -fqr -n "$cache" "$aliases" || stest -fqr -n "$cache" "$functions"; then
          (
            stest -flx $PATH
	    	alias | awk -F '[ =]' '{print $2}'
	    	compgen -A function
          ) | sort -u | tee "$cache" | dmenu "$@"
	else
		dmenu "$@" < "$cache"
	fi
)`

if [ -f $aliasfile ]; then
	if [ ! -z "$(grep '^alias' $aliases|cut -d'=' -f1|grep $cmd)" ] || [ -z $(which $cmd) ]; then
		echo -e "source ~/.zsh_aliases \n $cmd" | bash -O expand_aliases &
	else
		exec $cmd &
	fi
fi
