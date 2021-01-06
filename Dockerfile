FROM python:3.8-alpine

ARG alpine/cfn-lint
ARG alpine/cfn-lint:latest
RUN pip install cfn-lint
RUN pip install pydot

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
