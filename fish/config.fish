set fish_greeting ""

alias neofetch="fastfetch"
alias ls="lsd"



if status is-interactive
	date
	cowsay -f tux "They didn't bring us here to change the past."
        end

function fish_prompt
    set_color blue
    echo -n (printf "\033[1m")
    echo -n (prompt_pwd)
    set git_branch ''
    if test -d .git
        set git_branch (git rev-parse --abbrev-ref HEAD 2>/dev/null)
    end

    if test -n "$git_branch"
	set_color red
        echo -n ' ('$git_branch')'
    end

    echo -n (printf "\033[0m")
    set_color normal
    echo -n ' '
    set_color magenta
    echo -n (printf "\033[1m")
    echo -n ' '
    echo -n (printf "\033[0m")
    set_color blue
end


if test -f ~/.bashrc
    echo -e '\nexport GPG_TTY=(tty)' >> ~/.bashrc
end

