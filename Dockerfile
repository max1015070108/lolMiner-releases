# 使用支持 GPU 的 Ubuntu 基础镜像
FROM ubuntu:latest

# 安装 wget 和 tar
RUN apt-get update && apt-get install -y \
    wget \
    tar \
    && rm -rf /var/lib/apt/lists/*

# 工作目录设置为 /app
WORKDIR /app

# 下载并解压 lolMiner
RUN wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.81/lolMiner_v1.81_Lin64.tar.gz \
    && tar -xvf lolMiner_v1.81_Lin64.tar.gz

RUN ls -l 1.81/* 

# 确保脚本可执
COPY run.sh /app/run.sh
RUN chmod +x /app/run.sh

# 设置环境变量
ENV POOL=us.karlsen.herominers.com:1195
ENV WALLET=karlsen:qzewpqh0fn5nsrvd2gh27nj88cplv4w77y9gmvqn2h5zzfqpw3qq2wx8jcf8d.HelloKarslen

# 运行脚本
CMD ["/app/run.sh"]