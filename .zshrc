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

# anyenv無かったら落としてくる
if [ ! -d $HOME/.anyenv ]; then
  git clone https://github.com/riywo/anyenv "${HOME}/.anyenv"
fi

# ついでにanyenv-update
if [ ! -d $HOME/.anyenv/plugins/anyenv-update ]; then
  git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
fi

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# xonsh
alias x='xonsh'

# tmux起動(xonshはこの上で起動する)
tmux
