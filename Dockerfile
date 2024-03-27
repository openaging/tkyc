FROM python:3.10

# workdir の設定
WORKDIR /app

# Poetry のインストール
ENV POETRY_VERSION=1.1.13
RUN curl -sSL https://install.python-poetry.org | python3 - && \
    ln -s /root/.local/bin/poetry /usr/local/bin/poetry

# プロジェクトファイルのコピー
COPY pyproject.toml poetry.lock* /app/

# 依存関係のインストール
RUN poetry config virtualenvs.create false && \
    poetry install --no-interaction --no-ansi
