FROM python:2

RUN git clone https://github.com/petergardfjall/garminexport /garminexport

RUN pip install --requirement /garminexport/requirements.txt

COPY cmd.sh /
RUN chmod 755 /cmd.sh

RUN groupadd -r app && useradd -r -g app app

USER app

VOLUME data/

WORKDIR /

CMD ./cmd.sh
