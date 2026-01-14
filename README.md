# affogato.xin 博客

这是我的个人博客网站，基于 Hexo 和 Butterfly 主题构建。

## 安装和运行

1. 确保已安装 Node.js 和 Git
2. 安装 Hexo CLI：
   ```
   npm install -g hexo-cli
   ```

3. 安装依赖：
   ```
   npm install
   ```

4. 安装 Butterfly 主题：
   ```
   npm install hexo-theme-butterfly
   xcopy /E /I "node_modules\hexo-theme-butterfly" "themes\butterfly"
   ```

5. 启动本地服务器：
   ```
   hexo clean && hexo generate && hexo server
   ```

## 配置

- 主配置文件：[_config.yml](./_config.yml)
- Butterfly 主题配置：[_config.butterfly.yml](./_config.butterfly.yml)

## 部署

运行以下命令部署到 GitHub Pages：
```
hexo clean && hexo generate && hexo deploy
```

## 自定义域名

当前使用自定义域名 affogato.xin，通过 CNAME 文件配置。