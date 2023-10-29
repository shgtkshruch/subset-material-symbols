FROM python:3.9

WORKDIR /app

COPY subset-gf-icons /app/
RUN pip install -e .

CMD ["bash", "-c", "tail -f /dev/null"]
