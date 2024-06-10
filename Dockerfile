FROM python:3.9-slim-bullseye

WORKDIR /app

COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 5000

CMD [ "flask", "run" ]

# docker build -t my-flask-app .
# docker images
# docker run -p 5000:5000 9d5fd7aa4c34 