# Taken from https://mohammadthalif.wordpress.com/2016/07/25/how-to-minify-css-using-simple-bash-commands/
# accessed 30 April 2021
#!/bin/bash
set -eupo pipefail

extension=${1##*.}
minified=${1%.*}
minified=$minified.min.$extension
cat $1 | \
gsed -r ':a; s%(.*)/\*.*\*/%\1%; ta; /\/\*/ !b; N; ba' \
| tr -d '\t' | tr -d ' ' | tr -d '\n' | tr -s ' ' ' ' > $minified
