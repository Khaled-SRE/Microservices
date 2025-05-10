from flask import Flask
from app.routes.product_routes import product_blueprint

app = Flask(__name__)
app.register_blueprint(product_blueprint)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001) 