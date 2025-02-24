FROM 5hojib/aeon:latest

WORKDIR /usr/src/app

RUN chmod -R 777 /usr/src/app

COPY requirements.txt .
RUN uv venv
RUN uv pip install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod +x start.sh

CMD ["bash", "start.sh"]
