####
# Deploy the webpage from the git repository
####

#!/bin/sh
set -eupo pipefail

# Index
./add_common_content_root.sh ./index.html
./fix_nordics.sh ./index.html

# Twitter embed js code
wget -O fi/js/widgets.js https://platform.twitter.com/widgets.js
