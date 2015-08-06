# Installs Homebrew, our package manager
# http://brew.sh/

SECTION="BREW"
log_banner "$SECTION"

$(/usr/bin/which -s brew)
if [[ $? != 0 ]]; then
  log 'Installing Homebrew...'
  # piping echo to simulate hitting return in the brew install script
  do_exec echo | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we're using the latest Homebrew
do_exec brew update

# Version Control
do_exec brew install git

# additional git commands
do_exec brew install hub

# Upgrade any already-installed formulae
do_exec brew upgrade

# These formulae duplicate software provided by OS X
# though may provide more recent or bugfix versions.
do_exec brew tap homebrew/dupes

# GA WDI formulae
do_exec brew tap drmikeh/ga-extras

packagelist=(
  # Autoconf is an extensible package of M4 macros that produce shell scripts to
  # automatically configure software source code packages.
  autoconf

  # Automake is a tool for automatically generating Makefile.in
  automake

  # generic library support script
  libtool

  # a YAML 1.1 parser and emitter
  libyaml

  # neon is an HTTP and WebDAV client library
  # neon

  # A toolkit implementing SSL v2/v3 and TLS protocols with full-strength
  # cryptography world-wide.
  openssl

  # pkg-config is a helper tool used when compiling applications and libraries.
  pkg-config

  # a script that uses ssh to log into a remote machine
  ssh-copy-id

  # XML C parser and toolkit
  libxml2

  # a language for transforming XML documents into other XML documents.
  libxslt

  # a conversion library between Unicode and traditional encoding
  libiconv

  # generates an index file of names found in source files of various programming
  # languages.
  ctags

  # Adds history for node repl
  readline

  # Bash command line completion
  bash-completion

  # A nice prompt for Bash and GIT repos
  bash-git-prompt

  # Provides a way to install and update GUI apps from the command line
  brew-cask

  # Extra GIT commands for General Assembly classes
  ga-git-extras

  # Extra Bash Scripts for GA WDI Classes
  ga-wdi-extras

  # Extra GIT commands that make life easier
  git-extras

  # Tools and libraries to manipulate images in many formats
  imagemagick

  # JPEG image manipulation library
  jpeg

  # High-performance, schema-free, document-oriented database
  mongodb

  # Relational database Mgmt system
  postgresql

  # Internet file retriever
  wget
)

do_exec brew install ${packagelist[@]}

# A tap of previous versions of stuff
do_exec brew tap homebrew/versions

# A brew extension for starting and stopping services such as postgresql and mongodb
do_exec brew tap homebrew/services

# Ensures all tapped formula are symlinked into Library/Formula
# and prunes dead formula from Library/Formula.
do_exec brew tap --repair

# Remove outdated versions from the cellar
do_exec brew cleanup
