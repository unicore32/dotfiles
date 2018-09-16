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

# anyenvをloadする
[[ -f $HOME/.zshrc.anyenv ]] && source $HOME/.zshrc.anyenv

# xonsh
alias x='xonsh'

# tmux起動(xonshはこの上で起動する)
tmux
