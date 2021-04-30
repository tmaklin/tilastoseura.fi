#!/bin/sh
set -eupo pipefail

# Remove the deployment files
rm deploy.sh add_common_content.sh minify.sh
rm footer.html header.html navbar.html

# Remove the non-minified files
rm css/collapsible.css
rm css/custom-styles.css
rm js/contact_address.js
rm js/year.js

# Remove the git repository
rm -rf .git .gitignore README.md
