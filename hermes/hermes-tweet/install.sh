#!/bin/bash
# install.sh - Install and enable Hermes Tweet plugin for Hermes Agent.

set -e

echo "===================================="
echo " hermes-tweet plugin installer"
echo "===================================="
echo

if ! command -v hermes >/dev/null 2>&1; then
  echo "[ERROR] hermes not found. Install Hermes Agent first."
  exit 1
fi

hermes plugins install Xquik-dev/hermes-tweet --enable

echo
echo "Installed hermes-tweet."
echo "Set XQUIK_API_KEY in your local Hermes environment before using read tools."
echo "Set HERMES_TWEET_ENABLE_ACTIONS=true only when write actions are intended."
