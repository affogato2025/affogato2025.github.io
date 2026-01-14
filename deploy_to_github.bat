@echo off
echo 正在部署 Hexo 博客到 GitHub Pages...
echo.

echo 正在安装依赖...
npm install

echo.
echo 正在安装 Butterfly 主题...
npm install hexo-theme-butterfly
xcopy /E /I "node_modules\hexo-theme-butterfly" "themes\butterfly"

echo.
echo 正在生成静态文件...
npx hexo clean
npx hexo generate

echo.
echo 检查 Git 状态...
git status

echo.
echo 添加所有文件到 Git...
git add .

echo.
echo 提交更改...
git commit -m "Initial commit: Hexo blog with Butterfly theme"

echo.
echo 正在推送代码到 GitHub...
git push -u origin main

echo.
echo 部署完成！
echo 请访问 https://affogato2025.github.io 查看您的博客
pause