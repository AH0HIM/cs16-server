# CS 1.6 Server

Configuration and management system for Counter-Strike 1.6 server.

## Structure

```
cs16-server/
└── server-files/          # Server files and configs
    └── addons/
        ├── amxmodx/       # AMX Mod X files
        └── metamod/       # MetaMod files
        └── reunion/       # Reunion files
```

## Workflow

### Sync from server:
1. Run "CS Server Sync and Deploy" workflow manually
2. Server files will be downloaded to `server-files/`
3. Pull changes locally

### Update server:
1. Edit files locally in `server-files/`
2. Push changes
3. Files will be automatically deployed to server