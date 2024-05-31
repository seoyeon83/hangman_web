FROM python:3.8-slim-buster
LABEL Maintainer="mool8487@swu.ac.kr"
WORKDIR /app
COPY app.py ./
COPY requirements.txt ./
RUN pip3 install -r requirements.txt
EXPOSE 4000
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=4000"]