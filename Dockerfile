FROM python:3.8.10
LABEL maintainer="codeg.iq@gmail.com"
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /blog
COPY requirements.txt /blog/
RUN pip install -r requirements.txt
EXPOSE 8000
EXPOSE 8100
COPY . /blog/