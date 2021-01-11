FROM python:3.8-alpine

COPY top10.sh /top10.sh
RUN chmod +x /top10.sh

RUN pip install cfn-lint==${x}
CMD /top10.sh
