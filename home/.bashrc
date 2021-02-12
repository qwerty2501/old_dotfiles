

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

if [ -f "$HOME/.Xmodmap" ]; then xmodmap $HOME/.Xmodmap; fi
if [ -f "$HOME/.bash_aliases" ]; then
    . "$HOME/.bash_aliases"
fi
# BEGIN ANSIBLE MANAGED BLOCK: asdf
if [ -e "$HOME/.asdf/asdf.sh" ]; then
  source $HOME/.asdf/asdf.sh
  source $HOME/.asdf/completions/asdf.bash
fi
# END ANSIBLE MANAGED BLOCK: asdf



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/qwerty2501/google-cloud-sdk/path.bash.inc' ]; then . '/home/qwerty2501/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/qwerty2501/google-cloud-sdk/completion.bash.inc' ]; then . '/home/qwerty2501/google-cloud-sdk/completion.bash.inc'; fi



if [ -e "$HOME/.local_bashrc" ] ; then
		source $HOME/.local_bashrc
fi
