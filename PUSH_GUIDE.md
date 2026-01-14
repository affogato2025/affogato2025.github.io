# 推送代码到GitHub指南

## 前提条件

在执行推送之前，请确保已完成以下设置：

1. **GitHub账户**：您需要有GitHub账户
2. **仓库权限**：您需要对仓库 `https://github.com/affogato2025/affogato2025.github.io.git` 有写入权限
3. **身份验证**：您需要配置好Git的身份验证方式

## 身份验证设置

### 方法一：使用Personal Access Token（推荐）

1. 访问 GitHub Settings -> Developer settings -> Personal access tokens -> Tokens (classic)
2. 点击 "Generate new token"
3. 选择适当的权限（至少需要repo权限）
4. 复制生成的token

当执行推送时，如果提示输入密码，请输入该token。

### 方法二：使用SSH密钥

1. 生成SSH密钥：
   ```bash
   ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
   ```

2. 将公钥添加到GitHub账户：
   - 复制公钥内容：`cat ~/.ssh/id_rsa.pub`
   - 在GitHub Settings -> SSH and GPG keys中添加

3. 更改远程仓库URL为SSH方式：
   ```bash
   git remote set-url origin git@github.com:affogato2025/affogato2025.github.io.git
   ```

## 执行推送

1. **双击运行** `deploy_to_github.bat` 脚本，或在命令行中执行：
   ```bash
   ./deploy_to_github.bat
   ```

2. **如果遇到权限错误**，请检查您的身份验证设置

## 验证部署

1. 等待GitHub完成构建（通常需要几分钟）
2. 访问 `https://affogato2025.github.io`
3. 检查是否能看到您的博客

## 常见问题

### 推送失败
- 检查网络连接
- 确认有仓库写入权限
- 验证身份认证凭据

### 页面404错误
- 确认已在GitHub仓库的Settings -> Pages中启用服务
- 确认选择的是main分支和root目录

### 内容未更新
- 确认已执行 `npx hexo generate` 生成最新内容
- 确认已推送最新代码到GitHub