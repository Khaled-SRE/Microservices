# Microservices Application

A simple microservices-based application built with Python and Flask. This application demonstrates a basic implementation of microservices architecture with user and product services.

---

## 📁 Project Structure  
```
Microservices/
├── app/
│   ├── routes/
│   │   ├── product_routes.py
│   │   └── user_routes.py
│   ├── services/
│   │   ├── product_service.py
│   │   └── user_service.py
│   ├── __init__.py
│   └── main.py
└── run.py

```
---

## ✨ Features

- RESTful API for Users and Products  
- Blueprint-based modular architecture  
- Lightweight and simple implementation  

---

## 🛠️ Installation

### Clone the repository**:
```bash
git clone https://github.com/Khaled-SRE/Microservices.git
cd Microservices
```
### Set up a virtual environment (recommended):
```bash
python3 -m venv venv
source venv/bin/activate  
```
### Install dependencies:
```bash
pip3 install -r requirements.txt
```
### 🚀 Running the Application

You can run the application using the run.py script:

```bash
python3 run.py
```
Alternatively, run it directly from the app module:
```bash
python3 -m app.main
```
### The application will start on:  
📍 http://127.0.0.1:5000 by default.  

## 📡 API Endpoints  

### 🔹 User Service  
  GET /users – Get all users  
  ↳ Defined in user_routes.py:7-10  
  GET /users/{user_id} – Get a specific user by ID  
  ↳ Defined in user_routes.py:12-18  
### 🔹 Product Service  
  GET /products – Get all products  
  ↳ Defined in product_routes.py:7-10  
  GET /products/{product_id} – Get a specific product by ID  
  ↳ Defined in product_routes.py:12-18  

## 🧠 Implementation Details  

### 📦 Application Structure  
The application uses Flask Blueprints to organize routes, making it modular and maintainable.  
↳ See __init__.py:9-11  

### 🧩 Services  
The application includes two services:  

#### User Service  
↳ Manages user data  
↳ Located in user_service.py:1-12  
↳ Currently contains mock data for demonstration  
#### Product Service  
↳ Manages product data  
↳ Located in product_service.py:1-12  
↳ Currently contains mock data for demonstration  
