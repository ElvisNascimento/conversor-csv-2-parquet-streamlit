# Primeiro estágio: Construção do ambiente
FROM python:3.9-slim AS stage1

WORKDIR /app

COPY ./app.py /app/app.py 

RUN pip install streamlit pandas pyarrow

# Segundo estágio: Imagem final com o aplicativo
FROM python:3.9-slim

WORKDIR /app

COPY --from=stage1 /app /app

ENTRYPOINT ["streamlit", "run", "app.py"]

