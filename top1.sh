repo="aws-cloudformation/cfn-python-lint"
output=$(curl -sl https://api.github.com/repos/${repo}/tags |jq -r '.[].name'|sort --reverse|head -10)
#echo $output

for x in $output;
do echo $x;
done;

