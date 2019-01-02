查看已创建的容器

docker container ls -a

docker ps -a

---

查看镜像

docker images

---

进入容器并执行指令

docker exec -it containerId command

---

启动容器

docker container start containerId

---

创建数据卷容器并在其中创建一个数据卷挂载到/dbdata

docker run -it -v /dbdata --name dbdata ubuntu

---

使用 --volumes-from 挂载dbdata容器中的数据卷


docker run -it --volumes-from dbdata --name db1 ubuntu

docker run -it --volumes-from dbdata --name db2 ubuntu

---

查看映射端口配置

docker port containerId portNumber

---

后台运行 

docker run -d image

---

端口映射

docker run -p 6000:6000 image

---

命名

docker run --name=test image

---

docker run  --help


---

