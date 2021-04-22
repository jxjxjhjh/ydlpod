https://github.com/nbr23/ydl-podcast 非官方docker镜像

1.下载 config.yaml docker-compose.yml pod.opml run.sh 放到合适的位置（默认/var/www）

2.在 config.yaml 中按格式添加项目

3.run.sh 默认24小时爬一次项目，可自行修改，然后授予权限 chmod +x run.sh

(ps:特殊情况下会因为用户产生权限问题，授予777权限即可解决)

4.查看 docker-compose.yml ，按需修改，最后 docker-compose up -d 创建容器即可

PS：pod.opml是podcast导入文件，需要手工编写，按示例格式添加即可
