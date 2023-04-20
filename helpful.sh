#open a pr
function newpr () {
    case $PWD in
        *devedmonton.com) open "https://github.com/devedmonton/devedmonton.com/compare/main...MandyMeindersma:devedmonton.com:main";;
        *) echo "You haven't configured your bash file to make pr's from here";;
    esac
}

function editZsh () {
    code ~/.zshrc
}

function editProfile () {
    code ~/.zshrc
}



# show my git branch 
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
setopt PROMPT_SUBST
export PROMPT='%{%F{243}%}%n %{%F{197}%}%~ %{%F{27}%}$(parse_git_branch) %{%F{normal}%}$%{%f%} '