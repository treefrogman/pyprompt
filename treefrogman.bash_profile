VISUAL=/usr/bin/nano; export VISUAL
EDITOR=/usr/bin/nano; export EDITOR
CLICOLOR_FORCE=true; export CLICOLOR_FORCE

# The next line updates PATH for the Google Cloud SDK.
source '/Users/treefrogman/bin/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/treefrogman/bin/google-cloud-sdk/completion.bash.inc'

bin_path="/Users/treefrogman/bin"
export PATH=$bin_path:$PATH


#https://stackoverflow.com/questions/16715103/bash-prompt-with-last-exit-code
#https://github.com/demure/dotfiles/blob/master/subbash/prompt
#export PS1="\$(/Users/treefrogman/bin/pyprompt | read outp ; echo $outp )"
#export PS1="\$(/Users/treefrogman/bin/pyprompt | sed -E 's/\\(.)/\1/g')"
#export PS1="\$(/Users/treefrogman/bin/pyprompt)"
export PS1='\[\e[30;47m\]'"\$(/Users/treefrogman/bin/pyprompt)\[\e[0m\]\n\[\e[42;30m\e[K\]"
trap "pyprompt -e" DEBUG
export PS2='\[\e[0m\]    \[\e[42;30m\e[K\]'
#trap echo -e "[\e[0m]"' DEBUG
#export PS1="\\$(printf '=%.0s' \{1..\$(tput cols)})[\e[0;0H\e[7m\]💻 \l┃\$(batterylevel)┃\$(emojiclock) \D{%y%m%d.%H%M%S}┃👤 \u┃📂 \W\[\e[0m\e[1000;0H\]"
#export PS1="\[\e[7m\]💻 \l\[\e[0m\]\$(batterylevel)\[\e[7m\]\$(emojiclock) \D{%y%m%d.%H%M%S}\[\e[0m\]👤 \u\[\e[7m\]📂 \W\[\e[0m\] "
#export PS2="Pray, do go on… "

alias killcmus="kill -9 `top -s 0 -o +command -l 1 -ncols 2 -R | grep '^\d*\s*cmus' | cut -d ' ' -f1`"

# PROMPT_COMMANDPROMPT_COMMAND=__prompt_command # Func to gen PS1 after CMDs
#
# __prompt_command() {
#     local EXIT="$?"             # This needs to be first
#
# 	pyprompt $EXIT
# }
