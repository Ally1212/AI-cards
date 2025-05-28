# 使用官方 Node.js 镜像作为基础镜像
FROM node:18-slim

# 设置工作目录
WORKDIR /app

# 只复制 package.json 到容器中
COPY package.json ./

# 安装项目的依赖项
RUN npm install

# 将 TypeScript 编译器相关的工具（tsc, ts-node）安装到全局环境中
RUN npm install -g typescript ts-node

# 复制项目的源代码到容器中
COPY . .

# 编译 TypeScript 代码
RUN npm run build

# 设置环境变量（你可以根据需要调整）
ENV NODE_ENV=production

# 暴露服务端口
EXPOSE 3000

# 运行项目
CMD ["npm", "start"]
