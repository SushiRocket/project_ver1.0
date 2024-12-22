#Dockerfile

FROM python:3.10-slim

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*


WORKDIR /app

#pythonのライブラリーのキャッシュを削除する設定
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUnBUFFERED 1

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/