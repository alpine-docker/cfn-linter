FROM python:3.8-alpine

RUN repo="aws-cloudformation/cfn-python-lint"
RUN output=$(curl -sl https://api.github.com/repos/${repo}/tags |jq -r '.[].name'|sort --reverse|head -10)
RUN echo $output

RUN for x in $output;
RUN do echo $x;
RUN done;

ARG version=$x
RUN echo 'version is' ${version}
RUN pip install cfn-lint==${version}
RUN pip install pydot

#ENTRYPOINT ["cfn-lint"]
#CMD ["--help"]
