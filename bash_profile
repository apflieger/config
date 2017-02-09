alias ll='ls -lhAF'

function parse_git_branch {
  #git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ \1/"
  
  # truc plus générique pour tie
  git symbolic-ref HEAD 2> /dev/null
}
export PS1='\[\e[0;34m\]\t \[\e[0;33m\]\w\[\e[0;31m\] $(parse_git_branch)\[\e[0m\] $ '

export HISTCONTROL=ignoreboth

export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"

function xdebugconfig {
  php=$(php -i | awk 'NR==2 {print $4}')
  nano "/usr/local/etc/php/${php:0:3}/conf.d/ext-xdebug.ini"
}
