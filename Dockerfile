FROM python:3.11-slim
RUN apt update
RUN apt install -y git
RUN apt install python3-tk tk-dev -y
WORKDIR /llmplayground
RUN pip install --upgrade pip
RUN pip install torch torchdata
RUN pip install transformers datasets
CMD ["/bin/bash"]