SECTION="GEMS"
log_banner "$SECTION"

# Our Ruby version manager
# brew install rbenv
do_exec git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

# Use homebrew's directories instead of rbenv's
# echo 'export RBENV_ROOT=/usr/local/var/rbenv' >> ~/.bash_profile
# export RBENV_ROOT="/usr/local/var/rbenv"

# Add to bash_profile
# do_exec "echo '# added by installfest script' >> ~/.bash_profile"
# do_exec "echo 'export PATH=$HOME/.rbenv/bin:$PATH' >> ~/.bash_profile"
# do_exec "echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile"

# enable shims and autocompletion
do_exec export PATH="$HOME/.rbenv/bin:$PATH"
do_exec eval "$(rbenv init -)"

# brew install rbenv-gem-rehash
do_exec git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

# Automatically install gems every time you install a new version of Ruby
# brew install rbenv-default-gems
do_exec git clone https://github.com/sstephenson/rbenv-default-gems.git ~/.rbenv/plugins/rbenv-default-gems

# # Provides an `rbenv install` command
# # ruby-build is a dependency of rbenv-default-gems, so it gets installed
# brew install ruby-build
do_exec git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# rbenv rehash
# source ~/.bash_profile

# Our gems to install
# skip documentation
do_exec "echo 'gem: --no-ri --no-rdoc' > ~/.gemrc"

# TODO (phlco) replace ~/.rbenv with $RBENV_ROOT
do_exec touch ~/.rbenv/default-gems

gemlist=(
  bundler         # Maintains a consistent environment for ruby applications.
  capybara        # Acceptance test framework for web applications
  # guard           # handle events on file system modifications
  # jasmine         # JavaScript testing
  pry             # alternative to the standard IRB shell
  # pry-coolline    # live syntax highlighting for the Pry REPL
  # rails           # full stack, Web application framework
  rspec           # testing tool for Ruby
  sinatra         # a DSL for quickly creating web applications in Ruby
  sinatra-contrib # common Sinatra extensions
  github_api      # Ruby interface to github API v3
  hipchat         # HipChat HTTP API Wrapper
  awesome_print   # pretty print your Ruby objects with style
  rainbow         # colorizing printed text on ANSI terminals
)

for gem in ${gemlist[@]}; do
  do_exec "echo '${gem}' >> ~/.rbenv/default-gems"
done
