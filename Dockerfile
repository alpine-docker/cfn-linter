FROM python:3.8-alpine

ARG version
RUN pip install cfn-lint==$version
RUN pip install pydot

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]

