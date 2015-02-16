#-----------------------------------------------------------------------------
# Handle Command Line Options
#-----------------------------------------------------------------------------
DRY_RUN=false
FORCE=false
VERBOSE=false

while getopts "dfv" FLAG; do
  case $FLAG in
    d ) DRY_RUN=true;;
    f ) FORCE=true;;
    v ) VERBOSE=true;;
    ? ) exit 2;;
  esac
done
