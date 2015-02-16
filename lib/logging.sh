#-------------------------------------------------------------------------------
# Logging
#-------------------------------------------------------------------------------

mkdir -p $LOGFOLDER

# Echo to STDERR
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
  echo "${BLUE}$1 ${CYAN}$2 ${RESET}"
}

function log_info() {
  echo ""
  echo "${CYAN}>>>>    $* ${RESET}"
}

function log_debug() {
  if [[ -n "$VERBOSE" && "$VERBOSE" != "false" ]]; then
    echo ""
    echo "${BLUE}>>>>    $* ${RESET}"
  fi
}

function log_warn() {
  echo ""
  echo "${MAGENTA}>>>>    $* ${RESET}"
}

function log_error() {
  echo ""
  echo "${RED}>>>>    $* ${RESET}"
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

  log_banner "Banner Message"

  log_info "Info message"
  log_debug "Debug message"
  log_warn "Warning message"
  log_error "Error message"
}
