FROM python:3
WORKDIR /ml_assignment/predict
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000/tcp
EXPOSE 5000/udp

CMD ["python3", "./predict.py", "-n","model.sav"]
