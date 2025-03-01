#!/bin/bash

echo "Aguardando o banco de dados..."
while ! nc -z db 5432; do
  sleep 1
done
echo "Banco de dados disponível!"

# Aplica as migrações do banco de dados
python manage.py migrate

# Coleta os arquivos estáticos
python manage.py collectstatic --noinput

# Inicia o Gunicorn para servir o Django
exec gunicorn my_django_project.wsgi:application --bind 0.0.0.0:8000 --workers 3
