FROM python:3.8-alpine

ARG version

RUN pip install cfn-lint==$version

RUN docker tag cfn/lint:$version cfn/lint:latest
