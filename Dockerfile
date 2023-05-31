FROM python:3.10.6-slim

ENV APP_HOME /app
WORKDIR ${APP_HOME}

COPY ./ .

RUN apt-get update
RUN apt-get install -y build-essential python3-dev

RUN pip install jupyter notebook gensim pandas ipywidgets pretty_html_table voila



EXPOSE 8888
CMD ["/usr/local/bin/voila","--Voila.ip='0.0.0.0'","--port=8888","--MappingKernelManager.cull_interval=10","--MappingKernelManager.cull_idle_timeout=10","--enable_nbextensions=True","--no-browser","/app/index.ipynb"]
