SECTION="RUBY"
log_banner "$SECTION"

ruby_check=$(rbenv versions | grep $RUBY_VERSION)

if [[ "$ruby_check" == *$RUBY_VERSION* ]]; then
  do_exec echo "$RUBY_VERSION is installed"
else
  do_exec rbenv install $RUBY_VERSION
fi

do_exec rbenv global $RUBY_VERSION
