source "./variables.sh"
source "./lib/cl_options.sh"        # inline execution
source "./lib/logging.sh"
source "./lib/do_exec.sh"
source "./lib/text_formatting.sh"   # inline execution

# Send STDOUT and STDERR to the logfile
exec > >(tee $LOGFILE); exec 2>&1

# log_test

SECTION="SIMPLE TEST"
log_banner $SECTION

do_exec ls -als

# do_exec "echo Writing to FOO_BAR.txt"
# do_exec 'rm -f FOO_BAR.txt'
# do_exec "echo 'Hello, Mike' >> FOO_BAR.txt"
# do_exec "echo Done writing to FOO_BAR.txt"
