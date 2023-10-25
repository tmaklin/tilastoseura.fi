#####
# Add the common content to a webpage
# This includes:
#   headers: header_fi.html
#   navbar: navbar_fi.html
#   footer: footer_fi.html
####

#!/bin/sh
set -eupo pipefail
sed -i '/<html lang="fi">/ r header_fi.html' $1
sed -i '/<body>/ r navbar_fi.html' $1
tail -r footer_fi.html > footer_reverse.html
tmpname=tmp-$RANDOM
tail -r $1 | sed '/<\/body>/ r footer_reverse.html' | tail -r > $tmpname
rm footer_reverse.html
mv $tmpname $1
