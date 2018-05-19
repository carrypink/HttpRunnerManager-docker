# HttpRunnerManager-docker
HttpRunnerManager-mysq-nginx-docker

*本项目仅对应HttpRunnerManager项目的docker配置，只含基本功能的docker配置，不涉及worker等*
##### 1、git clone HttpRunnerManager项目
```
cd ~/Github
git clone https://github.com/HttpRunner/HttpRunnerManager.git
```
##### 2、git clone 本项目
```
cd ~/Github
git clone https://github.com/chenchengyuan/HttpRunnerManager-docker.git
```
##### 3、将本项目下的文件，放HttpRunnerManager项目目录下，如相同则替换，本项目使用pymsql，故部分内容需要替换

##### 4、启动项目
启动```docker-compose up -d```

启动后```docker ps```应该有3个正在运行的httprunner起头的容器

关闭```docker-compose down```
##### 5、收集静态文件 和 生成数据库
```
docker exec -it httprunnermanager_web_1 bash
python manage.py collectstatic
python manage.py migrate
```

##### 6、访问http://127.0.0.1/api/login
