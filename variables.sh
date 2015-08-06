# LOGFOLDER="$HOME/.wdi";
LOGFOLDER=~/.wdi
LOGFILE="$LOGFOLDER/install.log"

#
# What We Know
#

USER_NAME=`whoami`
OS_VERSION=$(sw_vers -productVersion)
INSTALLED_MEMORY=`sysctl -n hw.memsize`
INSTALLED_MEMORY_IN_GB=`/usr/bin/bc <<< "scale = 3; ${INSTALLED_MEMORY} / 1024 / 1024 / 1000"`

CMD_LINE_TOOLS="CLTools_Executables"
if [ ! -z $(pkgutil --pkgs=com.apple.pkg.$CMD_LINE_TOOLS) ]; then
  CMD_LINE_TOOLS_VERSION=`pkgutil --pkg-info=com.apple.pkg.CLTools_Executables | grep version`
  CMD_LINE_TOOLS_STATUS="Command Line Tools $CMD_LINE_TOOLS_VERSION installed!\n"
else
  CMD_LINE_TOOLS_STATUS="Command Line Tools *NOT* installed!\n"
fi

#
# What We Want
#

RUBY_VERSION="2.2.0"
MINIMUM_OS="10.10.0"
