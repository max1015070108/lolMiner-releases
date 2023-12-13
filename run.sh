#!/bin/bash

# 使用环境变量，如果未设置则使用默认值
POOL=${POOL:-de.karlsen.herominers.com:1195}
WALLET=${WALLET:-karlsen:qzewpqh0fn5nsrvd2gh27nj88cplv4w77y9gmvqn2h5zzfqpw3qq2wx8jcf8d.HelloKarslen}

1.81/lolMiner --algo KARLSEN --pool $POOL --user $WALLET $@