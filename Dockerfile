# Primeiro estágio: Construção do ambiente
FROM python:3.9-slim AS stage1

WORKDIR /app

COPY ./app.py /app/app.py 

# Instalar pacotes necessários
RUN pip install --no-cache-dir streamlit pandas pyarrow

# Segundo estágio: Imagem final com o aplicativo
FROM python:3.9-slim

WORKDIR /app

COPY --from=stage1 /app /app

# Certifique-se de que o streamlit está no PATH
RUN pip install --no-cache-dir streamlit pandas pyarrow

# Iniciar o aplicativo Streamlit
ENTRYPOINT ["streamlit", "run", "app.py"]
