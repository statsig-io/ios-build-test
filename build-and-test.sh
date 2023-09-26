#!/bin/bash

BLUE='\033[0;34m'
RESET='\033[0m' # Reset text

(
  cd CocoapodsExample && ./build-and-test.sh
)

echo -e "${BLUE}[Build] CocoapodsExample Completed.${RESET}\n\n"

(
  cd SwiftPackageManagerExample && ./build-and-test.sh
)

echo -e "${BLUE}[Build] SwiftPackageManagerExample Completed.${RESET}\n\n"
