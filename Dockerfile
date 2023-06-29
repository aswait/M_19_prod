FROM python:3.11

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirments.txt requirments.txt

RUN pip install --upgrade pip
RUN pip install -r requirments.txt

COPY mysite .

CMD ["gunicorn", "mysite.wsgi:application", "--bind", "0.0.0.0:8000"]
