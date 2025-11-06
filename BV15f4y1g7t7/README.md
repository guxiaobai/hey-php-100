# PHP 的 PECL，PEAR 和 Composer 三种仓库_哔哩哔哩_bilibili


|本期版本| 上期版本 
|:---:|:---:
`Sun Jun  5 00:01:56 CST 2022` | -



要确认哪个包提供了 pear 命令，可以用

```
apt install apt-file
apt-file update
apt-file search bin/pear
```
---

* `which pear`: 文件在哪里 `/usr/bin/pear`
* `file /usr/bin/pear`: 文件是什么类型的
* `dpkg-query -S /usr/bin/pear`: 是那个软件包提供的
* `apt info php-pear`
* `dpkg-query -L php-pear`: 提供那些文件

---

## Pear

> 用的人不多了

* `pear list`
* `pear install`

## Pecl

> 稍微好一点是基于C的，速度快一点

* `pecl list`
* `pecl install`

## Composer

* Magento 被Adobe 收购了

```bash
composer config -g -l
```

```bash
composer require topthink/think  
```


## Ref

* <https://www.bilibili.com/video/BV15f4y1g7t7>
* <https://pear.php.net/>
* <https://pecl.php.net/>