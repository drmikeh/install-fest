# Either Execute or ECHO the input
function do_exec() {
  if [[ -n "$DRY_RUN" && "$DRY_RUN" != "false" ]]; then
    log_setting "DRY_RUN:" "$*"
  else
    log_setting "EXEC: " "$*"
    eval $*
  fi
}
