FROM python:3.8-alpine

COPY top10.sh /top10.sh
RUN apk add --no-cache --upgrade bash
RUN apt-get -y -qq update && \
	apt-get install -y -qq curl && \
	apt-get clean
#
# install jq to parse json within bash scripts
RUN curl -o /usr/local/bin/jq http://stedolan.github.io/jq/download/linux64/jq && \
 chmod +x /usr/local/bin/jq

RUN apt-get update
RUN apt-get install curl
RUN ./top10.sh
RUN chmod +x /top10.sh
#RUN echo 'version is' ${version}
RUN pip install cfn-lint==${version}
RUN pip install pydot

#ENTRYPOINT ["cfn-lint"]
#CMD ["--help"]
