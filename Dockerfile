FROM python:3.9-slim

WORKDIR /app

RUN python3 -m venv /opt/venv

COPY requirements.txt .

RUN /opt/venv/bin/pip install pip --upgrade
RUN /opt/venv/bin/pip install -r requirements.txt

COPY . .

RUN chmod +x run.sh

CMD ["./run.sh"]