FROM python:3.8-alpine

RUN /Users/eddiezhang/DevOps/cfn-linter/.top1.sh
ARG version=$x
RUN echo 'version is' ${version}
RUN pip install cfn-lint==${version}
RUN pip install pydot

#ENTRYPOINT ["cfn-lint"]
#CMD ["--help"]
