FROM python:3.12
RUN pip install poetry
COPY . /src
WORKDIR /src
# RUN poetry install
RUN poetry install --no-root
EXPOSE 8501
ENTRYPOINT ["poetry","run", "streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
# ENTRYPOINT ["poetry","run", "python", "main.py"]

# FROM python:3.12
# # O que quer puxar -> python e a versão dele
# # Não precisa instalar o pyenv na máquina, não precisa instalar nem o python na máquina
# RUN pip install poetry
# COPY . /src
# # Copia tudo que esta na pasta e joga pra uma pasta de src
# WORKDIR /src
# # Semelhante a um comando de cd
# RUN poetry install
# EXPOSE 8501
# # Porta que "libera o acesso" do streamlit com a máquina
# ENTRYPOINT ["poetry","run", "streamlit", "run", "app/app.py", "--server.port=8501", "--server.address=0.0.0.0"]
# #ENTRYPOINT ["poetry","run", "python", "exemplo.py"]