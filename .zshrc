# zgen無かったらcloneしてくる
if [ ! -d $HOME/.zgen ]; then
  git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
fi

# zgenをloadする
[[ -f $HOME/.zshrc.zgen ]] && source $HOME/.zshrc.zgen

# tpm (Tmux Plugin Manager)無かったらcloneしてくる
if [ ! -d $HOME/.tmux/plugins/tpm ]; then
  git clone https://github.com/tmux-plugins/tpm "${HOME}/.tmux/plugins/tpm"
fi

# 環境変数
export XDG_CONFIG_HOME=~/.config

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# tmux起動
# https://qiita.com/ssh0/items/a9956a74bff8254a606a
if [[ ! -n $TMUX && $- == *l* ]]; then
  # get the IDs
  ID="`tmux list-sessions`"
  if [[ -z "$ID" ]]; then
    tmux new-session
  fi
  create_new_session="Create New Session"
  ID="$ID\n${create_new_session}:"
  ID="`echo $ID | $PERCOL | cut -d: -f1`"
  if [[ "$ID" = "${create_new_session}" ]]; then
    tmux new-session
  elif [[ -n "$ID" ]]; then
    tmux attach-session -t "$ID"
  else
    :  # Start terminal normally
  fi
fi
