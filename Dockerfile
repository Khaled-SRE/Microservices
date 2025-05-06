# Stage 1: Build stage  
FROM python:3.9-slim AS builder  
  
# Set working directory  
WORKDIR /app  
  
# Set environment variables  
ENV PYTHONDONTWRITEBYTECODE=1 \  
    PYTHONUNBUFFERED=1 \  
    PIP_NO_CACHE_DIR=1 \  
    PIP_DISABLE_PIP_VERSION_CHECK=1  
  
# Install build dependencies  
RUN apt-get update && apt-get install -y --no-install-recommends gcc && \  
    rm -rf /var/lib/apt/lists/*  
  
# Create a requirements.txt file with specific versions  
RUN echo "flask==2.0.1" > requirements.txt  
  
# Install dependencies  
RUN pip install --no-cache-dir -r requirements.txt  
  
# Stage 2: Runtime stage  
FROM python:3.9-slim  
  
# Set working directory  
WORKDIR /app  
  
# Set environment variables  
ENV PYTHONDONTWRITEBYTECODE=1 \  
    PYTHONUNBUFFERED=1 \  
    PORT=5000  
  
# Create a non-root user  
RUN addgroup --system appgroup && \  
    adduser --system --group appuser && \  
    chown -R appuser:appgroup /app  
  
# Copy only the dependencies from the builder stage  
COPY --from=builder /usr/local/lib/python3.9/site-packages/ /usr/local/lib/python3.9/site-packages/  
COPY --from=builder /usr/local/bin/ /usr/local/bin/  
  
# Copy application code  
COPY --chown=appuser:appgroup . .  
  
# Switch to non-root user  
USER appuser  
  
# Expose port  
EXPOSE 5000  
  
# Run the application  
CMD ["python", "run.py"]
