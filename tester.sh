#!/bin/bash
set -Ceuo pipefail
export LANG=C TZ=UTC

BASE=https://www.data.jma.go.jp/developer/xml/feed/
FILES="regular.xml extra.xml eqvol.xml other.xml \
 regular_l.xml extra_l.xml eqvol_l.xml other_l.xml"
rc=0

date

for file in $FILES
do
  wget -q -O${file} --save-headers "${BASE}${file}"
  echo "--- ${file} ---"
  if ! grep -qi '^access-control-allow-origin:' ${file}
  then
    echo "*** ${file} DOES NOT HAVE CORS HEADER ***"
    sed -n '1,/^\r$/p' ${file}
  else
    sed -n '1,/^\r$/p' ${file}
    rm -f ${file}
  fi
done
