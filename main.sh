#!/usr/bin/env bash

source "./variables.sh"
source "./lib/cl_options.sh"        # inline execution
source "./lib/logging.sh"
source "./lib/greeting.sh"
source "./lib/exec.sh"
source "./lib/text_formatting.sh"   # inline execution

# Send STDOUT and STDERR to the logfile
exec > >(tee $LOGFILE); exec 2>&1

# log_test

greeting
pause "Continue with Install Fest"

# log_banner "Shell Setup"

source "./lib/check_cl_tools.sh"

closing

# do_exec ls -als
