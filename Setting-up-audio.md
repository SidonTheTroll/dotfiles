# Setting up Audio with Alsamixer 

1. Open `alsamixer` in the terminal and tinker with the settings until the sound is audible. 
2. Once the setting is done, close the CUI and enter `sudo alsactl store` in the terminal. 

After doing this, the setting is saved at `/var/lib/alsa/asound.state`. 

To make sure that the setting is reloaded after each boot, do the following below if your system uses 'systemd': 

3. Create a new systemd service file: 
	- `sudo vim /etc/systemd/system/alsa-restore.service`
4. Then add the following content into the file. 
```
[Unit]
Description=Restore ALSA mixer settings

[Service]
Type=oneshot
ExecStart=/usr/sbin/alsactl restore
ExecStop=/usr/sbin/alsactl store
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
```

5. Save close the file and enable the new service: 
	- `sudo systemctl enable alsa-restore.service` 
