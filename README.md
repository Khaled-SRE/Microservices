# 🚀 Microservices Application

A modern microservices-based application built with Python and Flask, demonstrating best practices in microservices architecture with separate User and Product services.

## 📁 Project Structure
```
Microservices/
├── app/
│   ├── routes/
│   │   ├── product_routes.py
│   │   ├── user_routes.py
│   │   └── __init__.py
│   ├── services/
│   │   ├── product_service.py
│   │   ├── user_service.py
│   │   └── __init__.py
│   ├── main.py
│   ├── main_product.py
│   ├── main_user.py
│   └── __init__.py
├── Dockerfile.product
├── Dockerfile.user
├── build-images.sh
├── requirements.txt
├── run.py
├── .dockerignore
└── .gitignore
```

## ✨ Features

### 🔹 Product Service
- RESTful API for product management
- Runs on port 5001
- Endpoints:
  - `GET /products` - List all products
  - `GET /products/{id}` - Get product by ID
  - `POST /products` - Create new product
  - `PUT /products/{id}` - Update product
  - `DELETE /products/{id}` - Delete product

### 🔹 User Service
- RESTful API for user management
- Runs on port 5002
- Endpoints:
  - `GET /users` - List all users
  - `GET /users/{id}` - Get user by ID
  - `POST /users` - Create new user
  - `PUT /users/{id}` - Update user
  - `DELETE /users/{id}` - Delete user

## 🛠️ Installation

### Prerequisites
- Python 3.8+
- Docker

### Local Development Setup

1. **Clone the repository**:
```bash
git clone https://github.com/Khaled-SRE/Microservices.git
cd Microservices
```

2. **Set up virtual environment**:
```bash
python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt
```

3. **Run the services**:
```bash
# Run both services
python3 run.py

# Or run services individually
python3 app/main_product.py  # Product service on port 5001
python3 app/main_user.py     # User service on port 5002
```

### Docker Build and Push

The project includes a build script for Docker images:

```bash
# Build both service images
./build-images.sh

# Or build individually
docker build -t microservices-product:latest -f Dockerfile.product .
docker build -t microservices-user:latest -f Dockerfile.user .
```

## 🚀 Running the Application

### Local Development
The application can be run in two ways:

1. **Run both services together**:
```bash
python3 run.py
```

2. **Run services individually**:
```bash
# Make sure you're in the project root directory
export PYTHONPATH=$PYTHONPATH:$(pwd)

# Product Service
python3 app/main_product.py  # http://localhost:5001

# User Service
python3 app/main_user.py    # http://localhost:5002
```

Note: When running services individually, you need to set the PYTHONPATH to include the project root directory so Python can find the `app` module.

## 🧠 Implementation Details

### 📦 Application Architecture
- Flask Blueprint-based modular architecture
- Separate routes for each service
- Service layer for business logic
- Clean separation of concerns
- Independent service entry points

### 🔒 Security Features
- Input validation
- Error handling
- Secure HTTP headers
- CORS configuration

### ⚡ Performance Optimizations
- Efficient routing
- Response caching
- Connection pooling
- Resource management

### 📊 Monitoring
- Health check endpoints
- Error logging
- Request tracking
- Performance metrics

## 🛡️ Best Practices

1. **Code Organization**:
   - Modular structure
   - Clear separation of concerns
   - Consistent coding style
   - Comprehensive documentation

2. **API Design**:
   - RESTful principles
   - Clear endpoint naming
   - Proper HTTP methods
   - Consistent response format

3. **Error Handling**:
   - Proper error responses
   - Logging
   - Input validation
   - Exception handling

4. **Testing**:
   - Unit tests
   - Integration tests
   - API tests
   - Performance tests

## 🐳 Docker Configuration

### Dockerfile Structure

The project includes two separate Dockerfiles for each service:

1. **Dockerfile.product**

2. **Dockerfile.user**


### Building Docker Images

The project includes a `build-images.sh` script to build both service images:

```bash
#!/bin/bash

# Build Product Service
docker build -t microservices-product:latest -f Dockerfile.product .

# Build User Service
docker build -t microservices-user:latest -f Dockerfile.user .
```

### Running Docker Containers

To run the services in Docker:

```bash
# Run Product Service
docker run -d -p 5001:5001 --name product-service microservices-product:latest

# Run User Service
docker run -d -p 5002:5002 --name user-service microservices-user:latest
```

### Docker Best Practices

1. **Image Optimization**:
   - Using slim base image
   - Multi-stage builds
   - Layer caching optimization
   - Minimal dependencies

2. **Security**:
   - Non-root user execution
   - Minimal base image
   - Regular security updates
   - Dependency scanning

3. **Performance**:
   - Optimized layer caching
   - Minimal image size
   - Efficient dependency installation
   - Resource limits

4. **Maintenance**:
   - Clear Dockerfile structure
   - Version pinning
   - Regular updates
   - Documentation




