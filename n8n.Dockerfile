FROM n8nio/n8n:latest

# 切換到 root 用戶以便安裝額外套件
USER root

# 更新 apt-get 並安裝 Python3 與 pip3
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# 如果需要其他 Python 套件，例如 pytest、playwright 等，也可以使用 pip 安裝
RUN pip3 install pytest playwright

# 切回非 root 用戶（依照 n8n 映像設計）
USER node