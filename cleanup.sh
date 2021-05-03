#!/bin/sh
set -eupo pipefail

# Remove the deployment files
rm deploy.sh add_common_content.sh
rm footer.html header.html navbar.html

# Remove the git repository
rm -rf .git .gitignore README.md
