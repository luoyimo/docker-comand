     #!/bin/bash
    echo =================================
    echo datasubscribe自动部署脚本
    echo =================================
    echo 进入/data/datasubscribe
    cd /data/datasubscribe
    echo 备份文件
    time=$(date "+%Y%m%d%H%M%S")
    mv data-subscribe.jar backup/data-subscribe-${time}.jar
    echo 删除datasubscibe目录
    rm -rf datasubscribe
    git clone http://huqi:xxxxx@gitlab.seeapp.com/huqi/datasubscribe.git
    echo 进入datasubscribe目录
    cd /data/datasubscribe/datasubscribe
    echo 开始编译文件
    mvn clean  package  -Dmaven.test.skip=true
    echo 进入编译完成文件
    cd /data/datasubscribe/datasubscribe/target
    echo 移动文件
    mv data-subscribe.jar /data/datasubscribe
    echo 重启服务
    cd /data/datasubscribe
    ps aux | grep java |grep data-subscribe | grep -v grep | awk '{print $2}' | xargs kill -9

    nohup java -Dactive=prod -Xms2048m -Xmx3096m -XX:+UseG1GC -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=./  -jar data-subscribe.jar >/data/datasubscribe/log/console.log 2>&1 &

    tail -f /data/datasubscribe/log/console.log


