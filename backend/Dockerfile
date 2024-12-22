#Dockerfile

FROM python:3.10-slim

RUN echo "deb http://ftp.jp.debian.org/debian bookworm main" > /etc/apt/sources.list
RUN echo "deb http://security.debian.org/debian-security bookworm-security main" >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*


WORKDIR /app

#pythonのライブラリーのキャッシュを削除する設定
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/