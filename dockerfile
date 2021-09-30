FROM python@sha256:26eed2c05672d3998faf313b21753dcbb39f7a70d21bf2ba198fa35c727421fa

ENV FLASK_APP=$PWD/main.py
ENV LC_ALL=en_US.utf-8
ENV LANG=en_US.utf-8

COPY requirements.txt .
COPY main.py .

RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3", "-m", "flask", "run", "-h", "0.0.0.0"]
