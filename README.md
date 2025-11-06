# hey-php-100



## Docker

<http://127.0.0.1:3000/>

**Download**

> <https://www.php.net/downloads.php?usage=web&os=osx&osvariant=osx-docker&version=8.3>

```bash
docker pull php:8.3-fpm
docker pull php:8.3-cli
```

**Configuration**

> <https://hub.docker.com/_/php#configuration>

```dockerfile
# /usr/local/etc/php
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
```

* 自定义的配置文件可以放入到 `conf.d` 目录下

---


* [php 扩展源码编译安装和软件包安装以及 libvirt-php 扩展介绍_哔哩哔哩_bilibili](./BV1eQ4y1B7Y4)
* [PHP 的 PECL，PEAR 和 Composer 三种仓库_哔哩哔哩_bilibili](./BV15f4y1g7t7)


## Ref



* <https://www.php.net/>