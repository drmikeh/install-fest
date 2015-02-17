SECTION="SIMPLE TEST"
log_banner "SIMPLE TEST"

do_exec ls -als

do_exec "echo Writing to FOO_BAR.txt"
do_exec 'rm -f FOO_BAR.txt'
do_exec "echo 'Hello, Mike' >> FOO_BAR.txt"
do_exec "echo Done writing to FOO_BAR.txt"
