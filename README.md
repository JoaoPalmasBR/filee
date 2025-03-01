# Projeto Django com Docker

Este é um projeto de exemplo utilizando Django e Docker.

## Pré-requisitos

- Docker
- Docker Compose

## Configuração do Ambiente

1. Clone o repositório:

   ```sh
   git clone <URL_DO_REPOSITORIO>
   cd <NOME_DO_REPOSITORIO>
   ```

2. Crie um arquivo `.env` com as variáveis de ambiente necessárias.

3. Construa e inicie os contêineres Docker:

   ```sh
   docker-compose up --build
   ```

4. Acesse o aplicativo no navegador:
   ```
   http://localhost:8000
   ```

## Comandos Úteis

- Acessar o shell do Django:

  ```sh
  docker-compose exec web python manage.py shell
  ```

- Criar migrações:

  ```sh
  docker-compose exec web python manage.py makemigrations
  ```

- Aplicar migrações:

  ```sh
  docker-compose exec web python manage.py migrate
  ```

- Criar superusuário:
  ```sh
  docker-compose exec web python manage.py createsuperuser
  ```

## Licença

Licenciado sob a [MIT License](LICENSE).
