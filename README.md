docker安装mysql5.7
~~~sheel
   docker pull mysql:5.7
   
docker run --name mysql5.7 -p 3306:3306 -v/home/mysql/data:/var/lib/mysql -v /home/mysql/conf.d:/etc/mysql/conf.d -eMYSQL_ROOT_PASSWORD=Vangelis -d mysql:5.7

docker exec -it mysql5.7 /bin/bash

apt-get update
apt-get install vim

/etc/mysql
show variables like 'lower%'


 docker run -p 6379:6379 --name redis -v /home/redis/redis.conf:/etc/redis/redis.conf -v /home/redis/data:/data -d redis redis-server /etc/redis/redis.conf --appendonly yes
~~~
