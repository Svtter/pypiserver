FROM python:3.8

RUN mkdir /app
WORKDIR /app

RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install pypiserver && mkdir /app/packages
EXPOSE 8080

CMD ["pypi-server", "-p", "8080", "/app/packages"]

