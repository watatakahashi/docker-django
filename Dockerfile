FROM python:3
ENV PYTHONUNBUFFERED 1

ENV APP_HOME /app
WORKDIR $APP_HOME

RUN pip install django

COPY . ./

CMD exec python manage.py runserver 0.0.0.0:$PORT