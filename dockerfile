FROM python:3.12-slim

WORKDIR /app

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy in your source
COPY . .

EXPOSE 8050

# Launch FastAPI
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8050"]
