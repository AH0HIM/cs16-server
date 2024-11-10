# CS 1.6 Server

Configuration and management system for Counter-Strike 1.6 server.

## Project Structure

```
cs16-server/
├── server-files/              # Live server files and configs
│   └── addons/
│       ├── amxmodx/           # AMX Mod X files
│       │   ├── configs/       # Plugin configurations
│       │   └── plugins/       # Installed plugins
│       └── metamod/           # MetaMod files
│
└── working-files/             # Development files
    ├── configs/               # Configuration files for development
    └── plugins/
        ├── compiled/          # Compiled .amxx files
        └── source/            # Source .sma files
```

## Usage

### Adding new plugin
1. Add source code to `working-files/plugins/source/`
2. Add compiled plugin to `working-files/plugins/compiled/`
3. Push changes
4. GitHub Actions will automatically deploy to server

### Updating configs
1. Edit config in `working-files/configs/`
2. Push changes
3. GitHub Actions will automatically deploy to server

### Syncing from server
1. Run "CS Server Sync and Deploy" workflow manually
2. Server files will be downloaded to `server-files/`
3. Changes will be committed automatically