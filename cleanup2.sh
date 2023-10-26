#!/bin/sh
set -eupo pipefail

# Remove the deployment files
rm deploy.sh add_common_content.sh
rm footer.html header.html navbar.html

rm deploy_en.sh add_common_content_en.sh
rm footer_en.html header_en.html navbar_en.html

rm deploy_fi.sh add_common_content_fi.sh
rm footer_fi.html header_fi.html navbar_fi.html

# Remove the git repository
rm -rf .git .gitignore README.md
