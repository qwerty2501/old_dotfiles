

case $- in
    *i*) ;;
      *) return;;
esac


export OSH=$HOME/.oh-my-bash
OSH_THEME="brainy"
completions=(
  git
  composer
  ssh
)


aliases=(
  general
)

plugins=(
  git
  bashmarks
)

source $OSH/oh-my-bash.sh
eval "$(direnv hook bash)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]; then . "$HOME/google-cloud-sdk/path.bash.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.bash.inc" ]; then . "$HOME/google-cloud-sdk/completion.bash.inc"; fi

if [ -f "$HOME/.Xmodmap" ]; then xmodmap $HOME/.Xmodmap; fi
