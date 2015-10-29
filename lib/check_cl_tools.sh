# Check that command line tools are installed

SECTION="CL TOOLS"
log_banner "Checking Command Line Tools"

case $OS_VERSION in
  *10.11*) cmdline_version="CLTools_Executables" ;; # El Capitan
  *10.10*) cmdline_version="CLTools_Executables" ;; # Yosemite
  *10.9*)  cmdline_version="CLTools_Executables" ;; # Mavericks
  *10.8*)  cmdline_version="DeveloperToolsCLI"   ;; # Mountain Lion
  *10.7*)  cmdline_version="DeveloperToolsCLI"   ;; # Lion
  *10.6*)  cmdline_version="DeveloperToolsCLILeo"
           log_warn "Outdated OS. Considering upgrading before continuing.";; # Snow Leopard
           # Force the user to upgrade if they're below 10.6
  *) log_warn "Sorry! You'll have to upgrade your OS to $MINIMUM_OS or above."; exit 1;;
esac

# Check for Command Line Tools based on OS versions
if [ ! -z $(pkgutil --pkgs=com.apple.pkg.$cmdline_version) ]; then
  log_info "Command Line Tools are installed!";
elif [[ $OS_VERSION == *10.6** ]]; then
  log_warn "Command Line Tools are not installed"
  log_warn "Downloading and installing the GCC compiler."
  log_warn "When you're done rerun this script"
  do_exec curl -OLk https://github.com/downloads/kennethreitz/osx-gcc-installer/GCC-10.6.pkg
  do_exec open GCC-10.6.pkg
  exit 1
elif [[ $OS_VERSION == *10.7* ]] || [[ $OS_VERSION == *10.8* ]]; then
  log_warn "Command Line Tools are not installed"
  log_warn "Register for a Developer Account"
  log_warn "Download the Command Lion Tools from"
  log_warn "https://developer.apple.com/downloads/index.action"
  log_warn "Then rerun this script"
  exit 1 # TODO (phlco) maybe just type 'done' instead of rerunning?
else
  log_warn "Command Line Tools are not installed!"
  # echo "run '$ sudo xcodebuild -license' then"
  # echo "'$ xcode-select --install'"
  # echo "Then rerun this script."
  log_warn "Running 'xcode-select --install' Please click continue!"
  log_warn "After installing please rerun the installfest script."
  do_exec xcode-select --install
  do_exec exit 1 # TODO (phlco) maybe just type 'done' instead of rerunning?
fi
