FROM python:3.12-alpine

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY ./src /app/src

RUN addgroup --system defaultgroup && adduser --system --ingroup defaultgroup defaultuser

RUN chown -R defaultuser:defaultgroup /app

USER defaultuser

ENTRYPOINT ["python"]

CMD ["src/main.py"]