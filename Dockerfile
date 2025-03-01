# Usar uma imagem base oficial do Python
FROM python:3.10

# Definir o diretório de trabalho no contêiner
WORKDIR /app

# Copia os arquivos necessários para o contêiner
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante do código do projeto
COPY . .

# Define a variável de ambiente para desabilitar buffer no Python
ENV PYTHONUNBUFFERED=1

# Dá permissão de execução ao entrypoint
RUN chmod +x /app/entrypoint.sh

# Comando de entrada padrão do contêiner
ENTRYPOINT ["/app/entrypoint.sh"]