#-------------------------------------------------------------------------------
# Logging
#-------------------------------------------------------------------------------

mkdir -p $LOGFOLDER

# Echo to STDOUT
function log() {
  echo "$1"
}

function log_banner() {
  echo "${CYAN}"
  echo "=========================================================="
  echo "$*"
  echo "=========================================================="
  echo "${RESET}"
}

function log_setting() {
  echo "${GREEN}($SECTION) ${BLUE}$1 ${CYAN}$2 ${RESET}"
}

function log_info() {
  echo ""
  echo "${GREEN}($SECTION) ${CYAN} >>>>    $* ${RESET}"
}

function log_debug() {
  if [[ -n "$VERBOSE" && "$VERBOSE" != "false" ]]; then
    echo ""
    echo "${GREEN}($SECTION) ${BLUE} >>>>    $* ${RESET}"
  fi
}

function log_warn() {
  echo ""
  echo "${GREEN}($SECTION) ${MAGENTA} >>>>    $* ${RESET}"
}

function log_error() {
  echo ""
  echo "${GREEN}($SECTION) ${RED} >>>>    $* ${RESET}"
}

function pause() {
  echo ""
  read -p "${BG_YELLOW}${BLACK}>>>>    $*. Press <Enter> to continue.${RESET}"
}

function log_test() {
  echo "${RED}RED${RESET}"
  echo "${GREEN}GREEN${RESET}"
  echo "${BLUE}BLUE${RESET}"
  echo "${YELLOW}YELLOW${RESET}"
  echo "${MAGENTA}MAGENTA${RESET}"
  echo "${CYAN}CYAN${RESET}"

  SECTION="TEST"

  log_banner "Banner Message"

  log_info "Info message"
  log_debug "Debug message"
  log_warn "Warning message"
  log_error "Error message"
}
