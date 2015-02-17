SECTION="GIT CONFIG"
log_banner "$SECTION"

git_completion_url=https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

do_exec curl -o ~/.git-completion.bash $git_completion_url

# Add user's github info to gitconfig
# https://www.kernel.org/pub/software/scm/git/docs/git-config.html
do_exec git config --global user.name    "$fname $lname"
do_exec git config --global user.github  $github_name
do_exec git config --global user.email   $github_email

# set colors
do_exec git config --global color.ui always

do_exec git config --global color.branch.current   "green reverse"
do_exec git config --global color.branch.local     green
do_exec git config --global color.branch.remote    yellow

do_exec git config --global color.status.added     green
do_exec git config --global color.status.changed   yellow
do_exec git config --global color.status.untracked red

# set editor
# change to `subl -w` if you want to open merge messages in Sublime.
do_exec git config --global core.editor "subl -w"

# default branch to push to
do_exec git config --global push.default current

# set global gitignore
do_exec git config --global core.excludesfile ~/.gitignore_global
