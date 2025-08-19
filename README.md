# 🏠 CatTV 视频搜索与播放平台

## 📋 项目简介
多源视频搜索与播放平台是一个基于 **Node.js** 和 **Express** 的视频资源聚合搜索工具，支持多个视频资源站的搜索与在线播放功能。  

---

## ✨ 项目功能

- 🔍 **多源搜索** - 聚合各种资源站
- 🎥 **在线播放** - 搜索结果可直接进入详情页并播放
- 🎨 **简洁美观** - 前端基于 EJS 模板，界面清爽直观
- 📱 **响应式设计** - 适配手机、平板、桌面多端设备
- ⚡ **极速加载** - 优化性能，提升用户体验
- 🔑 **可扩展配置** - 通过 `config.json` 自由新增/修改站点

---

## 🚀 部署方式

### 1. Docker 部署
```bash
# 拉取最新镜像
docker pull ghcr.io/pprunbot/cattv:main

# 运行容器
docker run -d -p 3000:3000 --name cattv ghcr.io/pprunbot/cattv:main
```

### 2. Docker Compose 部署
创建 docker-compose.yml 文件:
```bash
version: '3.8'
services:
  cattv:
    image: ghcr.io/pprunbot/cattv:main
    container_name: cattv
    ports:
      - "3000:3000"
    restart: unless-stopped
    environment:
      - PORT=3000
      - NODE_ENV=production
```
运行命令:
```bash
docker-compose up -d
```

### 3. 传统部署
```bash
# 安装依赖
npm install

# 启动服务
npm start
```
访问地址 👉 http://localhost:3000
---

## 📄 许可证

本项目采用 Apache-2.0 License 开源，详情请查看 LICENSE
。
---
