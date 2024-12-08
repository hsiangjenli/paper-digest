FROM sphinxdoc/sphinx

WORKDIR /workspace
ADD .github/requirements.txt /workspace/requirements.txt

RUN apt-get update && apt-get install -y pandoc

RUN pip3 install -r requirements.txt

CMD ["make", "html"]
