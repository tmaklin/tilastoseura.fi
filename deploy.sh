####
# Deploy the webpage from the git repository
####

#!/bin/bash
set -eupo pipefail

# Index
./add_common_content.sh index.html

# Pages folder
for page in pages/*.html; do
    ./add_common_content.sh $page
done

# Iltapaivaseminaarit subfolder
for page in pages/iltapaivaseminaarit/*.html; do
    ./add_common_content.sh $page
done

# Palkinnot subfolder
for page in pages/palkinnot/*.html; do
    ./add_common_content.sh $page
done

# Tilastopaivat subfolder
for page in pages/tilastopaivat/*.html; do
    ./add_common_content.sh $page
done
