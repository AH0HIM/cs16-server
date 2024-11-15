# CS 1.6 Server ![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/AH0HIM/cs16-server/.github/workflows/deploy.yml) ![Last Commit](https://img.shields.io/github/last-commit/AH0HIM/cs16-server) ![GitHub commit count](https://img.shields.io/github/commit-activity/y/AH0HIM/cs16-server)

Configuration and management system for Counter-Strike 1.6 server.



## Structure

```
cs16-server/
└── server-files/                    # Server files and configs
    ├── addons/
    │   ├── amxmodx/                 # AMX Mod X files
    │   │   ├── configs/             # AMX Mod X configuration files
    │   │   ├── plugins/             # AMX Mod X plugins
    │   │   └── data/                # Language and other data files for AMX Mod X
    │   ├── metamod/                 # MetaMod files
    │       └── plugins.ini          # MetaMod plugins list (e.g., AMX Mod X, Reunion, dproto)
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