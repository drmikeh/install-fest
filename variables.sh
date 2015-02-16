# LOGFOLDER="$HOME/.wdi";
LOGFOLDER="./.wdi";
LOGFILE="$LOGFOLDER/install.log"

RUBY_VERSION="2.1.5"

# Standard Bash Variables
# `OSTYPE` A string describing the operating system Bash is running on.
# `MACHTYPE` system type in cpu-company-system
# `SECONDS` number of seconds since the shell was started.
OS_VERSION=$(sw_vers -productVersion)

INSTALLED_MEMORY=`sysctl -n hw.memsize`
INSTALLED_MEMORY_IN_GB=`/usr/bin/bc <<< "scale = 3; ${INSTALLED_MEMORY} / 1024 / 1024 / 1000"`

MINIMUM_OS="10.7.0"
