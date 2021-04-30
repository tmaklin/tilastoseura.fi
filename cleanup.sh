# Remove the deployment files
rm deploy.sh add_common_content.sh minify.sh
rm footer.html header.html navbar.html

# Remove the non-minified files
rm css/*.css
rm js/*.js

# Remove the git repository
rm -rf .git .gitignore README.md
