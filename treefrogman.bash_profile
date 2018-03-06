VISUAL=/usr/bin/nano; export VISUAL
EDITOR=/usr/bin/nano; export EDITOR
CLICOLOR_FORCE=true; export CLICOLOR_FORCE

# The next line updates PATH for the Google Cloud SDK.
source '/Users/treefrogman/bin/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/treefrogman/bin/google-cloud-sdk/completion.bash.inc'

bin_path="/Users/treefrogman/bin"
export PATH=$bin_path:$PATH

export PS1='\[\e[30;47m\]'"\$(/Users/treefrogman/bin/pyprompt)\[\e[0m\]\n\[\e[42;30m\e[K\]"
trap "pyprompt -e" DEBUG
export PS2='\[\e[0m\]    \[\e[42;30m\e[K\]'

alias killcmus="kill -9 `top -s 0 -o +command -l 1 -ncols 2 -R | grep '^\d*\s*cmus' | cut -d ' ' -f1`"
