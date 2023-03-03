# Laravel Template

dockerによる`laravel`開発環境のテンプレートです

## Usage

テンプレートからリポジトリ作成後、作成したリポジトリをクローンして以下のコマンドを実行してください。

```bash
# Laravel 9.*を構築する場合
bash ./starter.sh '9.*'
```

このスクリプトの実行で、以下の処理が実行されます。
* コンテナの立ち上げ
* Laravelプロジェクトの新規作成
* Laravelプロジェクト内の一部ディレクトリのパーミッション変更

スクリプト実行後は、`localhost:8080`にアクセスすると、ブラウザで動作のプロジェクトの動作を確認できます。

デフォルトでは`php:8.1-fpm`ですが、`compose.yaml`内の`services.app.build.args.version`の値を変更することで、phpのバージョンを変更可能です。
nginxとmysqlのバージョンは`.env`で定義しています。
詳しくは`.env.example`を確認してください。
