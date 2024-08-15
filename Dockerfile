# FROM python:3.9-slim

# RUN pip install streamlit pandas pyarrow

# COPY ./app.py /app/app.py 

# WORKDIR /app

# ENTRYPOINT [ "streamlit","run","app.py", "--server.port", "8502" ]



# Primeiro estágio: Construção do ambiente
FROM python:3.9-slim AS stage1

WORKDIR /app

COPY ./app.py /app/app.py 

# # Instalar pacotes necessários
RUN pip install --no-cache-dir streamlit pandas pyarrow

 # Segundo estágio: Imagem final com o aplicativo
FROM python:3.9-slim

WORKDIR /app

COPY --from=stage1 /app /app

# # Certifique-se de que o streamlit está no PATH
RUN pip install --no-cache-dir streamlit pandas pyarrow

# # Iniciar o aplicativo Streamlit
ENTRYPOINT [ "streamlit","run","app.py", "--server.port", "8502" ]
