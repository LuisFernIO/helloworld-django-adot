
FROM python:3.10-slim

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/

EXPOSE 8000

COPY entry_point.sh /app/entry_point.sh

RUN chmod +x /app/entry_point.sh

ENTRYPOINT ["/app/entry_point.sh"]

ENV PYTHONUNBUFFERED 1