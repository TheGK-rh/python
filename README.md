# Python勉強用リポジトリ

## 通常使用
* 環境構築
  * `make init`
* コンテナ内に入る
  * `make python` or `cd docker && docker compose exec python bash`
* コンテナ内でファイルを実行する
  * `python ファイル名.py`
* docker-composeを起動
  * `make up` or `cd docker && docker compose up -d`
* docker-composeを停止
  * `make down` or `cd docker && docker compose down --remove-orphans`
* 環境を削除
  * `make destroy` or `cd docker && docker compose down --rmi all --remove-orphans`

## Selenium (Armベース)
* 環境構築
  * `make arm-init`
* コンテナ内に入る
  * `make arm-python` or `cd docker && docker compose --file docker-compose.arm.yml exec python bash`
* コンテナ内でファイルを実行する
  * `python ファイル名.py`
* docker-composeを起動
  * `make arm-up` or `cd docker && docker compose --file docker-compose.arm.yml up -d`
* docker-composeを停止
  * `make arm-down` or `cd docker && docker compose --file docker-compose.arm.yml down --remove-orphans`
* 環境を削除
  * `make arm-destroy` or `cd docker && docker compose --file docker-compose.arm.yml down --rmi all --remove-orphans`