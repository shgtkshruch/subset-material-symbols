FROM python:3.9

WORKDIR /app

RUN apt-get update && apt-get install -y jq

COPY subset-gf-icons /app/
COPY icons.json /app/
RUN pip install -e .

CMD ["bash", "-c", "tail -f /dev/null"]
