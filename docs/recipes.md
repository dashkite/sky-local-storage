# Recipes

## Storing and Retrieving Configuration

You need to save a configuration object locally and retrieve it later for your application. 

Sky Local Storage provides a straightforward interface to write data directly to a YAML file in the home directory and read it back when needed.

```coffeescript
import LocalStorage from "@dashkite/sky-local-storage"

config = 
  theme: "dark"
  notifications: true

await LocalStorage.write "settings", config
retrievedConfig = await LocalStorage.read "settings"
```

1. Define the configuration data as a standard object.
2. Call the `write` method with a unique name and the data object.
3. Call the `read` method using the same unique name to retrieve the data later.

## Removing Configuration

You need to clean up obsolete configuration data from the local filesystem to free up space or reset the application state.

Sky Local Storage includes a dedicated removal method that securely deletes the specific configuration file from the `.sky` directory.

```coffeescript
import LocalStorage from "@dashkite/sky-local-storage"

await LocalStorage.remove "settings"
```

1. Identify the name of the configuration you wish to delete.
2. Call the `remove` method with the configuration name.

## Resolving Configuration File Paths

You need the absolute filesystem path to a specific configuration file, perhaps to pass it to a third-party library or to watch the file for changes.

Sky Local Storage provides a method to construct the exact absolute path for any configuration name without interacting with the file contents.

```coffeescript
import LocalStorage from "@dashkite/sky-local-storage"

# pass the configuration file path to an external file watcher
watcher.add LocalStorage.path "settings"
```

1. Identify the name of the configuration file you want to locate.
2. Call the `path` method with the configuration name to retrieve the absolute path.

## Locating the Storage Directory

You need to know the root directory where all Sky configuration files are stored, possibly to back up the entire directory or run a bulk operation.

Sky Local Storage exposes the underlying root directory path as a simple property.

```coffeescript
import LocalStorage from "@dashkite/sky-local-storage"

# create a backup of the entire configuration directory
backupSystem.archive LocalStorage.root
```

1. Access the `root` property on the `LocalStorage` object.
2. Use the returned absolute directory path for your broader filesystem operations.
