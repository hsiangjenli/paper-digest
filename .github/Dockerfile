FROM ghcr.io/astral-sh/uv:python3.11-bookworm-slim

WORKDIR /workspace
COPY pyproject.toml /workspace/pyproject.toml
COPY uv.lock /workspace/uv.lock

RUN apt-get update && apt-get install -y pandoc make

RUN uv sync

CMD ["make", "html"]
