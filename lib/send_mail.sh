#!/bin/bash

send_mail() {
  TO_ADDRESS=$1
  SUBJECT=$2
  log_info "\n=== Emailing install-fest to $TO_ADDRESS ==="
  mail -s "${SUBJECT}" "${TO_ADDRESS}" < $LOGFILE
}
