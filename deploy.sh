#!/bin/bash

wget --no-check-certificate https://git.io/JLGzO
cp -rf clear_buffer_cache.sh /home/clear_buffer_cache.sh
chmod +x /home/clear_buffer_cache.sh

crontab -l > crontab_clearbc
echo "* /5 * * * bash /home/clear_buffer_cache.sh" >> crontab_clearbc
crontab crontab_clearbc
rm -rf crontab_clearbc
rm -rf clear_buffer_cache.sh