# Config Files

This repository contains the Docker Compose files and configuration files for the various services I run on my home server. These files are organized to help set up and manage the services effectively.

## Services Included
The following services are included in this repository:

1. **[changedetection](https://github.com/dgtlmoon/changedetection.io)** - A service for monitoring website changes with notification methods and support for various types of changes.
2. **[coder](https://github.com/coder/coder)** - A cloud IDE for code editing and development with support for collaborative coding and tool integrations.
3. **[file-browser](https://github.com/filebrowser/filebrowser)** - A web-based file management tool.
4. **[homarr](https://github.com/ajnart/homarr)** - A customizable dashboard for all your apps and services.
5. **[homepage](https://github.com/gethomepage/homepage)** - A simple, customizable homepage for managing links and apps.
6. **[mealie](https://github.com/mealie-recipes/mealie)** - A self-hosted recipe manager and meal planner with grocery list generation and dietary customization.
7. **[navidrome](https://github.com/navidrome/navidrome)** - A lightweight, self-hosted music server supporting various audio formats and client compatibility.
8. **[nextcloud](https://github.com/nextcloud/server)** - A self-hosted productivity platform.
9. **[nexterm](https://github.com/gnmyt/Nexterm)** - An open-source server management tool for SSH, VNC, and RDP with multi-user support and audit logging.
10. **[pingvin-share](https://github.com/stonith404/pingvin-share)** - A file-sharing service with file size limits, security features, and temporary link support.
11. **[strling-pdf](https://github.com/Stirling-Tools/Stirling-PDF)** - A PDF management and processing service.
12. **[yt-dlp](https://github.com/alexta69/metube)** - A tool for downloading videos from the web.
13. **[jellyfin](https://github.com/jellyfin/jellyfin)** - A media server for personal media files.
14. **[kavita](https://github.com/Kareadita)** - A self-hosted ebooks management service supporting multiple formats and mobile-friendly interface.
15. **[speedtest-tracker](https://github.com/alexjustesen/speedtest-tracker)** - A speedtest tracker for monitoring internet speeds.
16. **[syncthing](https://github.com/syncthing/syncthing)** - A continuous file synchronization service.

## Repository Structure
The repository is organized as follows:

```
config-files/
├── docker-compose/       # Docker Compose files for all services
├── configs/              # Configuration files for services that support custom configs
└── README.md             # This documentation file
```

## Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/Viraj-S45/config-files
   cd config-files
   ```

2. Navigate to the desired service folder and update the `docker-compose.yaml` or configuration file as needed.

3. Deploy the service using Docker Compose:
   ```bash
   docker-compose up -d
   ```

4. Check the respective documentation for each service for additional setup and usage details.

## Customization
- Modify the `.env` files or configuration settings for each service to match your environment.
- Ensure you have the required Docker images and volumes configured.

## Contributions
Feel free to submit pull requests or open issues to improve this repository.

## License
This repository is licensed under the [MIT License](LICENSE).

## Acknowledgments
Thanks to the developers of all the included services for their amazing tools!
