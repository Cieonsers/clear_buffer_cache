#!/bin/bash#每两小时清除一次缓存
echo "开始清除缓存"
sync
sleep 30
echo 1 > /proc/sys/vm/drop_caches
echo 2 > /proc/sys/vm/drop_caches
echo 3 > /proc/sys/vm/drop_caches
echo "清理成功"
