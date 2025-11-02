# php 扩展源码编译安装和软件包安装以及 libvirt-php 扩展介绍_哔哩哔哩_bilibili

|本期版本|上期版本 
|:---:|:---:
`Sun Nov  2 23:45:07 CST 2025` | `Sat Jun  4 23:19:21 CST 2022`

* `dpkg -l package`: 已安装软件包的状态(每个占一行)
* `apt info php7.4-cli`: 查看软件包信息

## A: Extension

> 了解Extension的作用以及重要性

* [extension_dir](https://www.php.net/manual/zh/ini.core.php#ini.extension-dir) PHP 寻找可动态加载扩展的目录



## B: Command line options

> 讲述如何在命令行下获取相关配置文件以及具体信息

> [PHP: Options - Manual](https://www.php.net/manual/uk/features.commandline.options.php#features.commandline.options)

**01: Show configuration file names**

```bash
php --ini
```

**02: PHP information**

```bash
php -i |grep extension_dir
```


---

> [PHP: php-config - Manual](https://www.php.net/manual/zh/install.pecl.php-config.php)

```bash
# apt-get install php7.4-dev
php-config --extension-dir
```


---

> [PHP: ini_get - Manual](https://www.php.net/manual/zh/function.ini-get)

```bash
php -r "echo ini_get('extension_dir');"
```

---

```bash
# php --help
php --ri json # 展示指定扩展的配置信息（也可以通过 phpinfo() 返回相同信息）。 使用 “main” 作为扩展名可以获取到核心配置信息。
php --re json # 展示指定扩展的有关信息（php.ini 选项、定义函数、常量和类的列表）
```

## 扩展编译与调试

> [PHP: 用 phpize 编译共享 PECL 扩展库 - Manual](https://www.php.net/manual/zh/install.pecl.phpize.php)

**动态库依赖查看**

* `ldd`

**扩展编译**

* `config.m4`、`phpize`


## Ref

* <https://www.bilibili.com/video/BV1eQ4y1B7Y4>
* [PHP: 配置文件 - Manual](https://www.php.net/manual/zh/configuration.file.php#configuration.file)
  * `--with-config-file-path`
  * `--with-config-file-scan-dir`
* 