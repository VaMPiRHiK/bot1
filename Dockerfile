FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt \
    && python -c "import socksio; print('socksio OK')"

COPY bot.py .

CMD ["python", "bot.py"]
