#####
# Add the common content to a webpage
# This includes:
#   headers: header.html
#   navbar: navbar.html
#   footer: footre.html
####

#!/bin/sh
set -eupo pipefail
sed -i '/<html lang="fi">/ r header.html' $1
sed -i '/<body>/ r navbar.html' $1
tac footer.html > footer_reverse.html
tmpname=tmp-$RANDOM
tac $1 | sed '/<\/body>/ r footer_reverse.html' | tac > $tmpname
rm footer_reverse.html
mv $tmpname $1
