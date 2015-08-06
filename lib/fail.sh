SECTION="FAIL"

log_banner "$SECTION"
log_info "Let's test a failure of a script."

do_exec return -1
