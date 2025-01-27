function tg_prompt_info() {
    # dont show 'default' workspace in home dir
    [[ "$PWD" == ~ ]] && return
    # check if in terraform dir
    if [ -d .terraform ]; then
      workspace=$(terrgrunt workspace show 2> /dev/null) || return
      echo "[${workspace}]"
    fi
}

# alias
alias tg='terragrunt'
alias tga='terragrunt apply'
alias tgf='terragrunt fmt'
alias tgi='terragrunt init'
alias tgp='terragrunt plan'
alias tgv='terragrunt validate'