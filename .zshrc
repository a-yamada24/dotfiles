# aliases
alias ll='ls -lh'
alias la='ls -lha'
alias ls='ls -Gh'

# zsh基本設定
export LANG=ja_JP.UTF-8

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# brewでインスコしたやつのzsh補完リンク設定
fpath=($(brew --prefix)/share/zsh/site-functions $fpath)

autoload -Uz compinit
compinit

# cd無しでcd
setopt auto_cd

# cdでタブするとディレクトリ一覧を表示
setopt auto_pushd

# UTF-8環境での日本語対応
setopt print_eight_bit

# スペルチェック
setopt correct
setopt correct_all

# 補完候補を詰める
setopt list_packed

# カッコの補完
setopt auto_param_keys

# ディレクトリ名補完で末尾にスラッシュを付与
setopt auto_param_slash

# その端末固有の設定をロードする
if [ -e ~/.zsh_local ]; then
    source ~/.zsh_local
fi

# プロンプトの設定
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '(%s)-[%b]'
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
precmd () {
  psvar=()
  LANG=en_US.UTF-8 vcs_info
  [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

autoload colors
colors
P_CDIR="%B%F{cyan}%~%f%b"
P_INFO="%F{yellow}%n@$LOCAL_NAME%f:"
P_VCS="%F{green}%1v%f"
PROMPT="[$P_INFO$P_CDIR]$P_VCS$ "

# tmuxのプロンプト設定で上書き
#PROMPT="$PROMPT"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'