FROM python:3.8-alpine

COPY top1.sh /top1.sh
RUN ./top1.sh
ARG version=$x
RUN echo 'version is' ${version}
RUN pip install cfn-lint==${version}
RUN pip install pydot

#ENTRYPOINT ["cfn-lint"]
#CMD ["--help"]
