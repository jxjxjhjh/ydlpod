https://github.com/nbr23/ydl-podcast
非官方docker镜像

安装
```
docker run -d --name ydlpod \
    -p 80:8001 \
    -v /var/www:/app \
    --restart unless-stopped \
    jxjxjhjh/ydlpod
```
