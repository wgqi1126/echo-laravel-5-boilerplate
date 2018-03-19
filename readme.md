# Echo Laravel 基础框架

基于 Laravel Boilerplate 项目改造。

### 连接

[原版官方文档](http://laravel-boilerplate.com)

[原版官方WiKi](https://github.com/rappasoft/laravel-5-boilerplate/wiki)

### 介绍

Laravel Boilerplate为任何规模的Web应用程序提供了一个巨大的开端。 
它带有一个全功能的访问控制系统，开箱即用，易于学习的API，并建立在Twitter Bootstrap基础上，具有前端和后端架构。 
我们已经投入了大量的工作，我们希望它为您服务，并节省您的时间！

### 许可

MIT: [http://anthony.mit-license.org](http://anthony.mit-license.org)


### 安装

1.  环境要求

    PHP：版本 >= 7.1.3

1.  下载
   
    使用github下载 [https://github.com/wgqi1126/echo-laravel-5-boilerplate/archive/master.zip](https://github.com/wgqi1126/echo-laravel-5-boilerplate/archive/master.zip)

1.  配置
   
    复制配置
   
    `cp .env.example .env`
   
    编辑配置
   
    ```dotenv
    # 应用名称，有空格时必须加引号
    APP_NAME="Echo Laravel Local"
    # 应用网址，用于命令行，一般本地为：http://localhost:8000
    APP_URL=http://localhost:8000
    # 默认语言
    APP_LOCALE=zh
    # 语言包不存在时使用的替代语言
    APP_FALLBACK_LOCALE=zh
    # PHP中用的语言名称
    APP_LOCALE_PHP=zh_CN
    # 默认时区
    APP_TIMEZONE=Asia/Shanghai
    
    # 数据库相关配置
    DB_CONNECTION=mysql
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_DATABASE=echo-laravel
    DB_USERNAME=echo-laravel
    DB_PASSWORD=echo-laravel.pass
    ```

    安装 composer 包
   
    `composer install`
    
    生成加密的key
    
    `php artisan key:generate`
    
    链接存储目录
    
    `php artisan storage:link`
    
    执行数据库迁移
    
    `php artisan migrate`
    
    生成测试数据
    
    `php artisan db:seed`
    
    执行phpunit测试
    
    `phpunit`
    
    安装 npm 包
    
    `yarn`
    
1.  开始使用

    启动内置web服务器
    
    `php artisan serve`
    
    监控静态资源变化并编译
    
    `npm run watch`
    
    登录后台
    
    地址：[http://localhost:8000/login](http://localhost:8000/login)  
    管理员：admin@admin.com/1234  
    用户：user@user.com/1234
   
1.  安装并设置ide助手，便于代码编写和提示

    安装
    
    ```bash
    composer require --dev barryvdh/laravel-ide-helper
    composer require --dev doctrine/dbal
    ```
    
    生成配置
    
    `php artisan vendor:publish --provider="Barryvdh\LaravelIdeHelper\IdeHelperServiceProvider" --tag=config`
    
    添加调用
    
    ```php
    # app/Providers/AppServiceProvider.php
    public function register()
    {
        # 添加内容开始
        if ($this->app->environment() !== 'production') {
            $this->app->register(\Barryvdh\LaravelIdeHelper\IdeHelperServiceProvider::class);
        }
        # 添加内容结束
    }
    ```
    
    修改配置
    
    ```php
    # config/ide-helper.php
    'include_fluent' => true,
    ```
    
    添加辅助脚本
    
    ```bash
    # ide-helper.sh
    #!/usr/bin/env bash
    
    cd $(dirname $0)
    
    php artisan ide-helper:generate
    php artisan ide-helper:meta
    php artisan ide-helper:models -N
    ```
    
    添加git忽略文件
    
    ```
    # .gitignore
    _ide_helper_models.php
    ```
    
    生成ide辅助文件
    
    `sh ide-helper.sh`
    
    