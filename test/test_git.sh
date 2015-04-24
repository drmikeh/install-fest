#!/usr/bin/env bash

source "./variables.sh"
source "./lib/cl_options.sh"        # inline execution
source "./lib/logging.sh"
source "./lib/do_exec.sh"
source "./lib/text_formatting.sh"   # inline execution

# Send STDOUT and STDERR to the logfile
exec > >(tee $LOGFILE); exec 2>&1

source "./lib/greeting.sh"

source "./lib/check_cl_tools.sh"
source "./lib/github.sh"
source "./lib/git_config.sh"

source "./lib/closing.sh"
