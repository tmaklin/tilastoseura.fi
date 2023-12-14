#####
# Add the common content to a webpage
# This includes:
#   headers: header_en.html
#   navbar: navbar_en.html
#   footer: footer_en.html
####

#!/bin/sh
set -eupo pipefail
sed -i '/<html lang="fi">/ r header_en.html' $1
sed -i '/<body>/ r navbar_en.html' $1
sed -i '/<body class="d-flex flex-column">/ r navbar_en.html' $1
tail -r footer_en.html > footer_reverse.html
tmpname=tmp-$RANDOM
tail -r $1 | sed '/<\/body>/ r footer_reverse.html' | tail -r > $tmpname
rm footer_reverse.html
mv $tmpname $1
