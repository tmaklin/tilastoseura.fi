# Taken from https://mohammadthalif.wordpress.com/2016/07/25/how-to-minify-css-using-simple-sh-commands/
# accessed 30 April 2021
#!/bin/sh
set -eupo pipefail

extension=${1##*.}
minified=${1%.*}
minified=$minified.min.$extension
cat $1 | \
sed -r ':a; s%(.*)/\*.*\*/%\1%; ta; /\/\*/ !b; N; ba' \
| tr -d '\t' | tr -d ' ' | tr -d '\n' | tr -s ' ' ' ' > $minified
