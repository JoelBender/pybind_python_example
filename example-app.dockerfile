FROM python:3.10-slim

WORKDIR app

COPY ./export/*.whl .
RUN pip install *.whl
RUN rm -v *.whl

COPY example-app.py .

ENTRYPOINT ["python3", "example-app.py"]
