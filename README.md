# CS 1.6 Server

Configuration and management system for Counter-Strike 1.6 server.

## Project Structure

```plaintext
├── scripts/                   # Automation scripts
│   ├── backup/                # Backup scripts
│   └── deployment/            # Deployment scripts
│
├── server-files/              # Live server files
│   └── addons/
│       ├── amxmodx/
│       │   ├── configs/       # Plugin configurations
│       │   └── plugins/       # Installed plugins
│       └── cstrike/           # Core CS 1.6 files
│
└── working-files/             # Development files
    ├── configs/               # Configuration files
    └── plugins/
        ├── compiled/          # Compiled .amxx files
        └── source/            # Source .sma files
```

## Setup

### Requirements
- Python 3.8+
- Git
- SFTP access to server

### Installation
1. Clone the repository
```bash
git clone https://github.com/AHOHIM/cs16-server.git
```

2. Configure SFTP credentials in GitHub Secrets:
- SFTP_HOST
- SFTP_USERNAME
- SFTP_PASSWORD

### Usage
- Make changes in the `working-files/` directory
- Push to main branch for automatic server updates
- Backups are created automatically before each update

## Server Updates

### Automatic (via GitHub Actions):
1. Make changes in `working-files/`
2. Commit and push
3. GitHub Actions will update the server automatically

### Manual (via SFTP):
1. Connect to server via SFTP
2. Upload files manually

## Security
- All credentials are stored in GitHub Secrets
- Automatic backups before updates
- Change logging enabled

## Support
Create an Issue in the repository if you encounter any problems.