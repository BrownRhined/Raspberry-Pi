#!/bin/bash
cd /home/pi

FolderName=$(date +%Y%m%d)
DATE=$(date +%Y%m%d%H%M)

# 建立資料夾，帶-p表示資料夾存在的話忽略，不存在則建立
mkdir -p /home/pi/eoa-ai-image/$FolderName

# 透過fswebcam截圖，先skip 60張圖讓webcam先自動對焦完成
# 將banner設定成透明，並加入時間戳記與調整字型
fswebcam -r 1280x720 -S 20 --banner-colour '#FF000000' --line-colour '#FF000000' --timestamp '%Y-%m-%d %H:%M' --font 'sans:32' /home/pi/eoa-ai-image/$FolderName/$DATE.jpg


# return 0 to system
exit 0