FROM php:8.1-fpm

# コンテナ内の更新と必要パッケージのインストール
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
        vim \
        curl \
        zip \
        unzip \
        libzip-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install \
        bcmath \
        pdo_mysql \
        zip

# composerのインストール
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Laravelアプリケーションファイルのコピー
COPY . /var/www/html

# Laravelアプリケーションの依存関係をインストールする


RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 775 /var/www/html/bootstrap/cache \
    && chmod -R 775 /var/www/html/storage

WORKDIR /var/www/html
