ARG version
FROM php:${version}-fpm

# コンテナ内の更新と必要パッケージのインストール
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
        vim \
        curl \
        zip \
        unzip \
        libzip-dev \
        iputils-ping \
        net-tools \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install \
        bcmath \
        pdo_mysql \
        zip

# composerのインストール
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
