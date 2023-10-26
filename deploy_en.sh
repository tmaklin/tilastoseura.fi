####
# Deploy the webpage from the git repository
####

#!/bin/sh
set -eupo pipefail

# Index
./add_common_content_en.sh /en/index.html
./fix_nordics.sh /en/index.html

# Twitter embed js code
wget -O js/widgets.js https://platform.twitter.com/widgets.js

# Pages folder
for page in en/pages/*.html; do
    ./add_common_content_en.sh $page
    ./fix_nordics.sh $page
done

# Iltapaivaseminaarit subfolder
for page in en/pages/iltapaivaseminaarit/*.html; do
    ./add_common_content_en.sh $page
    ./fix_nordics.sh $page
done

# Palkinnot subfolder
for page in en/pages/palkinnot/*.html; do
    ./add_common_content_en.sh $page
    ./fix_nordics.sh $page
done

# Tilastopaivat subfolder
for page in en/pages/tilastopaivat/*.html; do
    ./add_common_content_en.sh $page
    ./fix_nordics.sh $page
done

# News subfolder
for page in en/news/*.html; do
    ./add_common_content_en.sh $page
    ./fix_nordics.sh $page
done
