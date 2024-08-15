# Documentação da Aplicação Streamlit

## Visão Geral

Esta aplicação é um conversor de arquivos desenvolvido com Streamlit, Python e Docker. Ela permite converter arquivos entre os formatos Parquet e CSV. A aplicação é empacotada em um container Docker e pode ser executada usando Docker Compose.

## Requisitos

Para executar a aplicação, você precisará ter o seguinte software instalado em sua máquina:

- **Docker**: Para criar e gerenciar containers.
- **Docker Compose**: Para definir e executar múltiplos containers Docker (opcional, mas recomendado).

## Estrutura do Projeto

O projeto possui a seguinte estrutura:

dashboard-streamlit/
│
├── app.py # Script principal da aplicação Streamlit
├── Dockerfile # Dockerfile para construir a imagem Docker
└── docker-compose.yml # Arquivo Docker Compose para gerenciar o container


### Descrição dos Arquivos

- **`app.py`**: Contém o código da aplicação Streamlit que fornece uma interface web para converter arquivos entre CSV e Parquet.
- **`Dockerfile`**: Define o ambiente de construção do Docker, incluindo instalação de dependências e configuração da aplicação.
- **`docker-compose.yml`**: Define a configuração do serviço Docker, facilitando a execução da aplicação com Docker Compose.

## Passo a Passo para Rodar a Aplicação

### 1. Clone o Repositório

Clone o repositório do projeto para seu diretório local:

```bash
git clone https://github.com/ElvisNascimento/dashboard-streamlit.git
cd dashboard-streamlit

2. Construir e Executar com Docker Compose
Se você tem o Docker Compose instalado, pode construir e executar o container Docker com o seguinte comando:
```

```bash
docker-compose up --build
```

ste comando faz o seguinte:

--build: Força a reconstrução da imagem Docker a partir do Dockerfile.
docker-compose up: Cria e inicia o container definido no docker-compose.yml.
Se o Docker Compose não estiver disponível, você pode usar os comandos Docker diretamente.

3. Construir a Imagem Docker
Construa a imagem Docker usando o Dockerfile:

```bash
docker build -t streamlit-app .
```

4. Executar o Container
Execute o container Docker com a imagem criada:


```bash
docker run -d -p 8502:8502 streamlit-app
```

Este comando faz o seguinte:

-d: Executa o container em segundo plano.
-p 8502:8502: Mapeia a porta 8502 do container para a porta 8502 da máquina host.
5. Acessar a Aplicação
Abra um navegador web e vá para http://localhost:8502 para acessar a aplicação Streamlit.

O que a Aplicação Faz
A aplicação permite a conversão de arquivos entre dois formatos:

Parquet para CSV:

Carregue um arquivo Parquet.
Visualize uma prévia dos dados.
Baixe o arquivo convertido no formato CSV.
CSV para Parquet:

Carregue um arquivo CSV.
Visualize uma prévia dos dados.
Baixe o arquivo convertido no formato Parquet.
Erros Comuns e Soluções
Erro de Permissão: Se você encontrar erros relacionados a permissões ao construir ou executar o Docker, verifique se você tem permissões adequadas no diretório do projeto e nas portas que está tentando usar.
Portas em Uso: Se a porta 8502 já estiver em uso, altere a configuração da porta no docker-compose.yml e no comando docker run.
Conclusão
Seguindo esses passos, você deve conseguir rodar a aplicação Streamlit em um container Docker. A aplicação oferece uma interface simples para conversão de arquivos e pode ser facilmente escalada e gerenciada usando Docker.
