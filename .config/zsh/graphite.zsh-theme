autoload -Uz vcs_info
precmd() {
    custom_first_char
    git_status
    vcs_info
}

function custom_first_char() {
    if [[ $(id -u) -eq 0 ]]; then
	FCHAR="#"
    else
	FCHAR="$"
    fi
}

function git_status() {
    if [[ -d .git ]]; then
	if [[ -n $(git status -s) ]]; then
	    zstyle ':vcs_info:git:*' formats " %{$fg[red]%} %b"
	else
	    zstyle ':vcs_info:git:*' formats " %{$fg[green]%} %b"
	fi
    fi
}

setopt PROMPT_SUBST
PROMPT='%B%{$fg[black]%}%m: %{$fg[cyan]%}%c${vcs_info_msg_0_} %{$fg[black]%}$FCHAR %{$reset_color%}'
