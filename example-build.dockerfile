FROM python:3.10

WORKDIR app

RUN pip install build

COPY setup.py pyproject.toml .
RUN mkdir src
COPY src/main.cpp src/

RUN python3 -m build .
RUN pip install ./dist/*.whl

