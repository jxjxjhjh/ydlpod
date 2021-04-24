https://github.com/nbr23/ydl-podcast 非官方docker镜像

1.下载 config.yaml docker-compose.yml pod.opml放到合适的位置（默认/var/www）

2.在 config.yaml 中按格式添加项目

3.默认24小时爬一次youtube，会自动更新youtube-dl。

4.查看 docker-compose.yml ，按需修改，最后 docker-compose up -d 创建容器即可

PS：pod.opml是podcast导入文件，需要手工编写，按示例格式添加即可
