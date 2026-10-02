1. Install Podman and podman-compose
	1. Install from officail site
	2. Check if it's running
		```sudo systemctl status podman``` 
	3. Create a new config dir ```~/home-server/config/podman```
	4. Create a `new podman-compose.yml` file
2. Containers Applist:
	1. Jellyfin - Media Server
		1. Create a new dir `~/home-server/jellyfin/media/`
		2. Add to podman-compose.yml:
			```version: "3.8"
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
	2. Immich - Photo Server
	3. Caddy