FROM python

COPY edureka.py .

RUN python edureka.py

RUN echo "Hello World.....!!!!!"

CMD ["echo", "Hello World.....!!!!!"]
