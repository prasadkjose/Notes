1. **Install Podman and podman-compose**
	1. Install from officail site
	2. Check if it's running
		```sudo systemctl status podman``` 
	3. Create a new config dir ```~/home-server/config/podman```
	4. Create a `new podman-compose.yml` file
2. TODO: Setup git for config files. 
3. **NordVPN meshnet (TEMP instead of WireGuard) for traffic routing**
	1. Start meshnet on server
		1. `nordvpn set meshnet on`
		2. 
4. **Containers Applist:**
	1. **Jellyfin - Media Server**
		1. Create a new dir `~/home-server/jellyfin/media/`
		2. Add to podman-compose.yml:
			```
			version: "3.8"
			services:
			  jellyfin:
				image: docker.io/jellyfin/jellyfin:latest
				container_name: jellyfin
				user: "prasad:" # Replace with your actual UID:GID if different
				userns_mode: keep-id
				ports:
				  - "8096:8096"
				volumes:
				  - ~/home-server/jellyfin/config:/config:Z
				  - ~/home-server/jellyfin/cache:/cache:Z
				  - ~/home-server/jellyfin/media:/media:ro,Z
				restart: unless-stopped
			```
		3. `podman-compose up -d`
		4. Create media directories in `~/home-server/jellyfin/media`
			1. Movies - `mkdir Movies`
			2. TV Shows - `mkdir TV Shows`
		5. http://localhost:8096/web/#/dashboard/libraries
	2. **Immich - Photo Server**
	3. **Caddy**
	4. **Uptime-Kuma to monitor server status**
		1. Create a new dir: `~/home-server/uptime-kuma`
		2. Update podman-compose.yml with
		    ```
		     uptime-kuma:
			    image: docker.io/louislam/uptime-kuma:2
			    container_name: uptime-kuma
			    restart: always
			    ports:
			      - "3001:3001"  # This maps the container port "3001" to the host port "3001"
			    volumes:
			      - ~/home-server/uptime-kuma:/app/data  # Configuring persistent storage
			    environment:
			      - TZ=UTC  # Set the timezone (change to your preferred local timezone so monitoring times are the same)
			      - UMASK=0022  # Set your file permissions manually
			    networks:
			      - kuma_network  # add your own custom network config
			    healthcheck:
			      test: ["CMD", "curl", "-f", "http://localhost:3001"]
			      interval: 30s
			      retries: 3
			      start_period: 10s
			      timeout: 5s
			    logging:
			      driver: "json-file"
			      options:
			        max-size: "10m"
			        max-file: "3"
			
			networks:
			  kuma_network:
			    driver: bridge 
		    ```
		3. Create a push monitor in Uptime-Kuma and copy the link
		4. Create a script that will push the system info `heartbeat.sh`
		5. Add to crontab -e
			`0 * * * * /home/prasad/home-server/scripts/heartbeat.sh`
		6. http://localhost:3001/dashboard
			