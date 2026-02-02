# 使用官方 Node.js 18 镜像
FROM node:18-slim

# 设置工作目录
WORKDIR /app

# 复制依赖文件
COPY package*.json ./

# 安装依赖
RUN npm install --production

# 复制源代码
COPY . .

# 暴露端口
EXPOSE 8080

# 启动命令
CMD ["node", "server.js"]