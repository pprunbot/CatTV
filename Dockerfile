FROM node:20-alpine

# 设置工作目录
WORKDIR /app

# 复制代码
COPY . .

# 安装依赖
RUN npm install

# 切换到非root用户前，赋予写权限
RUN chown -R 1000:1000 /app

# 添加非root用户
RUN adduser -D appuser
USER appuser

# 暴露端口
EXPOSE 3000

# 启动应用
CMD ["node", "server.js"]
