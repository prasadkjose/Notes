**Torrent Setup**
	1. Install Transmission
		 `sudo apt install transmission-cli transmission-daemon`
	2. Start service
		`sudo systemctl edit transmission-daemon.service`
			```[Service]
			Type=exec```
		`sudo systemctl daemon-reload`
		`sudo systemctl restart transmission-daemon.service`
	3. Configure Transmission setting
		1. open
			`sudo vim /var/lib/transmission-daemon/info/settings.json`
		2. Create a new dir in `~/home-server/Downloads/`
		3. change the json property:
			`"download-dir": "~/home-server/Downloads/",`
	4. Test Download
		1. `transmission-cli "magnetlink"`