SECTION="GIT CONFIG"
log_banner "$SECTION"

git_completion_url=https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

do_exec curl -o ~/.git-completion.bash $git_completion_url

# Add user's github info to gitconfig
# https://www.kernel.org/pub/software/scm/git/docs/git-config.html
do_exec git config --global user.name    "'$fname $lname'"
do_exec git config --global user.github  $github_name
do_exec git config --global user.email   $github_email

# set colors
do_exec git config --global color.ui auto

# set editor
# change to `subl -w` if you want to open merge messages in Sublime.
do_exec git config --global core.editor "'subl -n -w'"

# default branch to push to
do_exec git config --global push.default current

# set global gitignore
do_exec git config --global core.excludesfile ~/.gitignore_global

# Setup OS X Keychain
do_exec git config --global credential.helper osxkeychain

# Setup Some GIT Aliases
do_exec git alias g "log --graph --all --branches --decorate --pretty=format:'[%C(auto)%h%Creset][%C(cyan)%an %ar%Creset]%C(auto)%d%Creset %s %C(auto)%Creset'"
do_exec git alias h "log --all --decorate"
do_exec git alias ls "log --stat --all --decoratedo_exec"
