FROM python:3.9-alpine3.14

WORKDIR /usr/src/app

COPY requirements.txt ./ 
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

EXPOSE 80

CMD ["python", "./app.py"]