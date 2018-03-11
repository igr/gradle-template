#!/usr/bin/env bash

echo "Generating Gradle template..."

DIRECTORY=$(cd `dirname $0` && pwd)

# check if `gomplate` exist
if ! [ -x "$(command -v gomplate)" ]; then
  echo 'Error: gomplate is not installed.' >&2
  exit 1
fi

# check input
if [[ -z $1 ]]; then
	echo 'Error: template name missing'
	exit 1
fi

# params
readonly TEMPLATE=$1

# do it
echo "[$TEMPLATE]"

for f in "${DIRECTORY}/${TEMPLATE}"/*.tmpl; do

	filename=$(basename "$f")
	filename="${filename%.*}"

	echo $filename

	DIR="$DIRECTORY" gomplate --file $f --out $filename --datasource prj=./project.json --datasource org=./organization.json

done
