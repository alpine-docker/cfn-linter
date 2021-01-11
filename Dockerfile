FROM python:3.8-alpine

COPY top10.sh /top10.sh
RUN apk add --no-cache --upgrade bash

RUN apk update
RUN apk add --no-cache  jq
RUN apk add --no-cache  curl

RUN ./top10.sh
RUN chmod +x /top10.sh
#RUN echo 'version is' ${version}
RUN pip install cfn-lint==${version}
RUN pip install pydot

#ENTRYPOINT ["cfn-lint"]
#CMD ["--help"]
