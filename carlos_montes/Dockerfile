FROM python:3.12-slim AS base

WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

CMD ["python", "main.py"]

FROM base AS jupyter
RUN pip install jupyter
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser"]

FROM base AS tester
RUN pip install pytest
CMD ["pytest"]
