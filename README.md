# Sky Local Storage

*Read and write Sky configuration data to local filesystem*

[![Hippocratic License HL3-CORE](https://img.shields.io/static/v1?label=Hippocratic%20License&message=HL3-CORE&labelColor=5e2751&color=bc8c3d)](https://firstdonoharm.dev/version/3/0/core.html)

Sky Local Storage provides a simple interface to manage Sky configuration files stored on the local filesystem. It interacts with the `.sky` directory, persisting data as YAML files.

## Features

- Read configuration files from the `.sky` directory.
- Write configuration data to the `.sky` directory.
- Remove configuration files.
- Automatically handles data serialization.

## Installation

```shell
pnpm install @dashkite/sky-local-storage
```

## Usage

```coffeescript
import LocalStorage from "@dashkite/sky-local-storage"

# write configuration data
await LocalStorage.write "config", key: "value"

# read configuration data
config = await LocalStorage.read "config"
```

## Other Resources

- [Reference](docs/reference.md)
- [Recipes](docs/recipes.md)
- [Technical Notes](docs/technical-notes.md)
- [Testing](docs/testing.md)
