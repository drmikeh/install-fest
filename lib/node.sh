SECTION="NODE"
log_banner "$SECTION"

# TODO: replace with nvm
do_exec brew install node

packageList=(
  # CLI tool for scaffolding out Yeoman projects
  yo

  # Scaffold out a front-end web app
  generator-webapp

  # Yeoman generator for Backbone.js
  generator-backbone

  # Yeoman generator for AngularJS
  generator-angular

  # The grunt command line interface.
  grunt-cli

  # The browser package manager
  bower

  # Static analysis tool for JavaScript
  jshint

  # Unfancy JavaScript
  coffee-script

  # Code Coverage tool for JavaScript
  # istanbul

  # Fast, unopinionated, minimalist web framework
  express

  gulp

  # browserify

  generator-gulp-webapp
  generator-gulp-angular

  # Best MEAN Stack generator
  generator-angular-fullstack
)

for package in ${packageList[@]}; do
  do_exec npm install -g "${package}"
done
