# 部署指南

## 首次部署

### 方法一：使用 Git 命令行（推荐）

1. 确保已安装 Git 并配置好 GitHub 凭据
2. 运行以下命令：

```bash
# 首次推送
git push -u origin main
```

### 方法二：使用 GitHub Desktop

1. 安装 GitHub Desktop
2. 登录您的 GitHub 账户
3. 添加本地仓库
4. 推送更改到远程仓库

### 方法三：手动上传

1. 将整个项目文件夹打包为 ZIP
2. 在 GitHub 仓库页面点击 "Add file" -> "Upload files"
3. 上传所有文件（除了 node_modules 和 public 目录）

## 部署后的步骤

1. 访问 GitHub 仓库设置页面
2. 在 "Settings" -> "Pages" 选项卡中
3. 将 Source 设置为 "Deploy from a branch"
4. 选择 "main" 分支和 "/" 文件夹
5. 点击 "Save"

## 后续更新

每次更新内容后：

```bash
# 生成新的静态文件
npx hexo generate

# 提交源代码更改
git add .
git commit -m "更新内容"
git push

# 部署到 GitHub Pages
npx hexo deploy
```

## 故障排除

### 连接超时
- 检查网络连接
- 尝试使用 SSH 方式而非 HTTPS

### 权限错误
- 确认您有仓库的写入权限
- 检查 GitHub 令牌是否有效

### 部署失败
- 检查 [_config.yml](./_config.yml) 中的部署配置
- 确认仓库 URL 是否正确