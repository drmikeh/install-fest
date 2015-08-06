#!/usr/bin/env bash

source "./variables.sh"
source "./lib/cl_options.sh"        # inline execution
source "./lib/logging.sh"
source "./lib/do_exec.sh"
source "./lib/send_mail.sh"
source "./lib/text_formatting.sh"   # inline execution

# Send STDOUT and STDERR to the logfile
exec > >(tee $LOGFILE); exec 2>&1

source "./lib/greeting.sh"

send_mail "mike.hopper@ga.co" "install-fest greeting from $USER_NAME"

# log_info "Testing failure"
# source "./lib/fail.sh"
# log_error "We should not get this far!"
# exit 1;

source "./lib/check_cl_tools.sh"

source "./lib/github.sh"
source "./lib/brew.sh"
source "./lib/git_config.sh"
source "./lib/gems.sh"
source "./lib/ruby.sh"
source "./lib/node.sh"

source "./lib/closing.sh"

send_mail "mike.hopper@ga.co" "install-fest closing from $USER_NAME"
