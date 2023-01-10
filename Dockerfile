ARG PYTHON_VERSION

FROM python:${PYTHON_VERSION}

WORKDIR /app

RUN apt update && apt upgrade -y

RUN pip install requests xmltodict ansible

ENV PATH="${PATH}:/root/.local/bin"

COPY ./ ./
