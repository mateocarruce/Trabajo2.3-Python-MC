import os
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return '¡Distributed programming - Mateo Carrasco!'

if __name__ == '__main__':
    port = int(os.environ.get("PORT", 5000))  # Lee el puerto desde la variable de entorno, o usa 5000 por defecto
    app.run(host='0.0.0.0', port=port)
