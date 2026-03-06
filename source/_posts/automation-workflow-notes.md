---
title: 自动化部署流程再梳理
date: 2026-03-06 11:48:30
slug: automation-workflow-notes
categories:
  - 自动化实践
tags:
  - 自动化
  - 部署
  - GitHub Pages
description: 从构建、同步到推送，整理一套可复用的站点自动化发布流程。
---
随着页面和内容增多，纯手工发布容易遗漏细节，所以我把流程重新梳理成固定步骤。

## 当前流程

1. `hexo clean && hexo generate` 生成静态文件。  
2. 同步 `public` 到仓库根目录，保证 `index.html` 始终存在。  
3. `git add/commit/push` 触发线上更新。  
4. 线上轮询关键链接，确认都返回 200。  

## 流程价值

- 减少“菜单改了但页面没发布”的问题。  
- 降低重复操作的心智负担。  
- 提高内容更新的可预期性。  

## 后续可加

- 自动检测空链接与空页面  
- 自动生成更新日志草稿  
- 自动截图存档关键页面  
