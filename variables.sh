# LOGFOLDER="$HOME/.wdi";
LOGFOLDER="./.wdi";
LOGFILE="$LOGFOLDER/install.log"

RUBY_VERSION="2.2.0"

OS_VERSION=$(sw_vers -productVersion)

INSTALLED_MEMORY=`sysctl -n hw.memsize`
INSTALLED_MEMORY_IN_GB=`/usr/bin/bc <<< "scale = 3; ${INSTALLED_MEMORY} / 1024 / 1024 / 1000"`

MINIMUM_OS="10.10.0"
