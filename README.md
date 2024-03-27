# How to set up

```
docker compose -f ./Docker/docker-compose.yaml up --build -d
```

```
docker exec -it tkyc bash
```

# アップロード方法

必要な編集が終わったら，まずは test から実行する．

## test

```git add .
poetry run pytest -v
```

を実行すると，`tests`にあるテストが実行される．その結果を見て問題がなければ次に進む．

## install

次に

```
poetry install
```

を実行して Python に自作ライブラリをインストールする．

## build

```
poetry build
```

とすると，publish に必要なファイル群が生成される．

## publish

Publish に必要な情報を入力する．

```
poetry config repositories.testpypi https://test.pypi.org/legacy/
poetry config pypi-token.testpypi {Test PyPIのAPI Token}
```

最後に

```
poetry publish -r testpypi
```

とするとこで，Test PyPI にパッケージをアップロードできる．
