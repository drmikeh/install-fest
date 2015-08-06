#-------------------------------------------------------------------------------
# Greeting
#-------------------------------------------------------------------------------
SECTION="Greeting"

cat ./lib/logo.txt

log "Welcome to GA WDI InstallFest Script"
log_setting "Version:" "2.0"
log
log_setting "Author:" "Mike Hopper, GA Instructor (2014-2015)"
log_setting "Contributors:"
log_setting "  -" "Phillip Lamplugh, GA Instructor (2014)"
log_setting "  -" "PJ Hughes, GA Instructor (2014)"
log
log_setting "Script execution began at:" "$(date)"
log_setting "Force:"   "$FORCE"
log_setting "Verbose:" "$VERBOSE"
log_setting "LOGFILE:" "$LOGFILE"
log_setting "Operating System Type:"    "$OSTYPE"
log_setting "Operating System Version:" "$OS_VERSION"
log_setting "Machine Type:"             "$MACHTYPE"
log_setting "Installed Memory:"         "${INSTALLED_MEMORY_IN_GB} GB"
log "
This script will install or update files and applications that you will use
in class. Throughout the script you will be asked to enter your password.
Unless otherwise stated, this is asking for the password of your
computer's logged in user account, which is ${BLUE}`whoami`${RESET}.
"
pause "Continue with Install Fest"
