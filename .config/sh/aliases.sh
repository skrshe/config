alias ls="ls --color=auto"

alias -s {c,h,cpp,rs,go,jai,zig,odin,cs,js,java,yaml,html,adv,md,css,txt,json,yml,cargo,ini,csv,xml,gitignore,slide,}=nvim
alias -s {png,svg,jpg,jpeg,gif}=imv

alias G="goto"
alias Gl="goto -l"
alias Ga="goto -r"
alias Gr="goto -u"
alias GR="goto -c"
alias Gc="goto -x"
#alias Gj="cd $(goto -x $1)"
#
alias pimv="imv -u nearest_neighbour"
alias config='git --git-dir=/home/anu/.cache/config --work-tree=/home/anu'
alias ding="ping -c 4 8.8.8.8"
#
alias rcp="rclone copy"
alias rcfm="rclone ncdu"
alias rcsync="rclone sync"
alias tree="rclone tree"

alias Pu="paru -Syu"
alias Pi="paru -S"
alias Pr="paru -R"
#
alias Rs="paru -Ss"
alias RS="paru -Ss --searchby name"
alias Ru="paru -Syy"
