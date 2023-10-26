####
# Deploy the webpage from the git repository
####

#!/bin/sh
set -eupo pipefail

# Index
./add_common_content_fi.sh fi/index.html
./fix_nordics.sh fi/index.html

# Twitter embed js code
wget -O js/widgets.js https://platform.twitter.com/widgets.js

# Pages folder
for page in /fi/pages/*.html; do
    ./add_common_content_fi.sh $page
    ./fix_nordics.sh $page
done

# Iltapaivaseminaarit subfolder
for page in fi/pages/iltapaivaseminaarit/*.html; do
    ./add_common_content_fi.sh $page
    ./fix_nordics.sh $page
done

# Palkinnot subfolder
for page in fi/pages/palkinnot/*.html; do
    ./add_common_content_fi.sh $page
    ./fix_nordics.sh $page
done

# Tilastopaivat subfolder
for page in fi/pages/tilastopaivat/*.html; do
    ./add_common_content_fi.sh $page
    ./fix_nordics.sh $page
done

# News subfolder
for page in fi/news/*.html; do
    ./add_common_content_fi.sh $page
    ./fix_nordics.sh $page
done
