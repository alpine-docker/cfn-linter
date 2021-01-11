#!/bin/sh
repo="aws-cloudformation/cfn-python-lint"
output=$(curl -sl https://api.github.com/repos/${repo}/tags |jq -r '.[].name'|sort -r|head -10)
#echo $output

image='eddieorg/cfn-lint'
for version in $output;
do
  echo 'version is' $version
  docker build --build-arg version=${version} -t ${image}:${version}
  docker push eddieorg/cfn-lint:${image}:{version}
#echo 'version is '$x
done;

