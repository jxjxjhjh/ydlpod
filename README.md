https://github.com/nbr23/ydl-podcast
非官方docker镜像

安装

先将 run.sh和config.json 放到映射目录中（/var/www）
按需修改后再创建镜像

注：以创建时间为准，每24小时拉取一次，配置文件修改后下次拉取时即可生效。

```
docker run -d --name ydlpod \
    -p 80:8001 \
    -v /var/www:/app \
    --restart unless-stopped \
    jxjxjhjh/ydlpod
```
