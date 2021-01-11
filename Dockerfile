FROM python:3.8-alpine

ARG version=0.44.2
ENV top10_versions $top10_versions

RUN pip install cfn-lint==${top10_versions}

ENTRYPOINT /bin/sh /Users/eddiezhang/DevOps/cfn-linter/$top10_versions
