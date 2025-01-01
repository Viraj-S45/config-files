# Config Files

This repository contains the Docker Compose files and configuration files for the various services I run on my home server. These files are organized to help set up and manage the services effectively.

## Services Included
The following services are included in this repository:

1. **changedetection** - A service for monitoring website changes.
2. **coder** - A cloud IDE for code editing and development.
3. **file-browser** - A web-based file management tool.
4. **homarr** - A customizable dashboard for all your apps and services.
5. **homepage** - A simple, customizable homepage for managing links and apps.
6. **mealie** - A self-hosted recipe manager and meal planner.
7. **navidrome** - A lightweight, self-hosted music server.
8. **nextcloud** - A self-hosted productivity platform.
9. **nexterm** - An open-source server management tool for SSH, VNC, and RDP.
10. **pingvin-share** - A file-sharing service.
11. **strling-pdf** - A PDF management and processing service.
12. **yt-dlp** - A tool for downloading videos from the web.
13. **jellyfin** - A media server for personal media files.
14. **kavita** - A self-hosted ebooks management service.
15. **speedtest-tracker** - A speedtest tracker for monitoring internet speeds.
16. **syncthing** - A continuous file synchronization service.

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
