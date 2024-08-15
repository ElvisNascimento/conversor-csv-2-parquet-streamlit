python -m venv .venv

source .venv/bin/activate

streamlit run app.py --server.port 8502

docker build -t app-streamlit .