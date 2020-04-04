# Raspberry-Pi



##### 1. Download the script:
```
sudo wget https://raw.githubusercontent.com/BrownRhined/Raspberry-Pi/capturePhoto.sh
```

#### 2. Make the script executable
```
sudo chmod +x capturePhoto.sh
```
##### 3. Execute the script:
```
./capturePhoto.sh
```

##### . Setting crontab:
```
*/1 * * * * /home/pi/capturePhoto.sh >/dev/null 2>&1
```



##### . Setting crontab:
```
@ /home/pi/backup.sh >/dev/null 2>&1
```

