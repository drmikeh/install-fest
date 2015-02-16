#-----------------------------------------------------------------------------
# Handle Command Line Options
#-----------------------------------------------------------------------------
FORCE=false
VERBOSE=false

while getopts "vf" FLAG; do
  case $FLAG in
    f ) FORCE=true;;
    v ) VERBOSE=true;;
    ? ) exit 2;;
  esac
done
