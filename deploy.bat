@echo off
echo 正在部署 Hexo 博客到 GitHub Pages...
echo.

REM 清理缓存
call npx hexo clean

REM 生成静态文件
call npx hexo generate

REM 推送至 GitHub
call npx hexo deploy

echo.
echo 部署完成！
pause