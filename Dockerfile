# Usa una imagen base de Python 3
FROM python:3

# Configura variables de entorno
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Crea un directorio para la aplicación
RUN mkdir /hackernews
WORKDIR /hackernews

# Copia el archivo de requerimientos y lo instala
COPY requirements.txt /hackernews/
RUN pip install -r requirements.txt

# Copia los archivos de la aplicación
COPY . /hackernews/

# Ejecuta la aplicación
CMD python manage.py runserver 0.0.0.0:8000
