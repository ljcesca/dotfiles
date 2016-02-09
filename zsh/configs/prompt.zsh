# modify the prompt to contain git branch name if applicable
git_prompt_info() {
  current_branch=$(git current-branch 2> /dev/null)
  if [[ -n $current_branch ]]; then
    echo " %{$fg_bold[green]%}$current_branch%{$reset_color%}"
  fi
}

ruby_prompt_info() {
  if command -v chruby > /dev/null 2>&1; then
    current_ruby=$(chruby | sed -n -e 's/ \* //p' | sed -n -e 's/ruby-//p')
    if [[ -z $current_ruby ]]; then
      return
    fi



    echo " %{$fg_bold[magenta]%}$current_ruby%{$reset_color%}"
  fi
}

setopt promptsubst

if ! env | grep -q '^PS1='; then
	PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%c%{$reset_color%}$(git_prompt_info)$(ruby_prompt_info) %# '
fi
