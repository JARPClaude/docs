# 使用 Node.js 18 或更高版本的轻量级镜像
FROM node:24-slim

# 设置工作目录
WORKDIR /app

# 安装 mintlify CLI
RUN npm install -g mint

# 复制项目文件
COPY . .

# 暴露 mintlify dev 默认使用的端口
EXPOSE 3000

# 运行预览命令
# --host 0.0.0.0 是必须的，否则容器外无法访问
CMD ["mint", "dev", "--port", "3000"]
