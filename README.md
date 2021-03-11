https://github.com/nbr23/ydl-podcast
非官方docker镜像

1.安装
```
docker run -d --name ydlpod \
    -p 80:8001 \
    -v /var/www:/app \
    --restart unless-stopped \
    jxjxjhjh/ydlpod
```
3.初始化

在/var/www下增加config.yaml文件，然后运行

docker exec -it ydlpod ydl_podcast config.yaml

config.yaml 请参考 https://github.com/nbr23/ydl-podcast

5.设定定时拉取视频

在主机使用crontab或其他方法定时运行 docker exec -it ydlpod ydl_podcast config.yaml

过于频繁会被YouTube阻止，请勿设定太过于频繁的拉取频率和太多的频道。
频道数量建议在10个以内，拉取频率建议最快每12小时/次。

7.手动编写opml

请参考本项目中的相关文件，放在 /var/www 中可直接访问

PS：因缺乏技术，本项目未做任何安全性设置，项目文件全部暴露在网址下，任何人均可随意下载，有安全需求者建议自行进行安全性巩固。
