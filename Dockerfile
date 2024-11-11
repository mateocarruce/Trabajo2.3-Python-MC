# Usa la imagen base oficial de Python
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos del proyecto dentro del contenedor
COPY . /app

# Instala las dependencias de la aplicación (Flask)
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto 5000 (por defecto de Flask)
EXPOSE 5000

# Define el comando para ejecutar la aplicación Flask
CMD ["python", "app.py"]
