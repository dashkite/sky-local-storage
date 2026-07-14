# Reference

## root

$root \to path$

The absolute directory path serving as the root for local storage, which resolves to the `.sky` directory in the developer's home folder.

### Example

```coffeescript
import assert from "@dashkite/assert"
import Path from "node:path"
import LocalStorage from "@dashkite/sky-local-storage"

assert.equal LocalStorage.root, Path.join process.env.HOME, ".sky"
```

## path

$path: name \to path$

Constructs the absolute file path for a configuration entry. It appends the `.yaml` extension to the provided name and resolves it against the root directory.

### Example

```coffeescript
import assert from "@dashkite/assert"
import Path from "node:path"
import LocalStorage from "@dashkite/sky-local-storage"

expected = Path.join process.env.HOME, ".sky", "config.yaml"
assert.equal LocalStorage.path("config"), expected
```

## read

$read: name \dashrightarrow data$

Reads and parses configuration data from the local filesystem. It retrieves the YAML file corresponding to the given name and parses it into an object.

### Example

```coffeescript
import assert from "@dashkite/assert"
import LocalStorage from "@dashkite/sky-local-storage"

data = await LocalStorage.read "config"
assert.ok data
```

## write

$write: name, data \dashrightarrow \emptyset$

Serializes configuration data and writes it to the local filesystem. It saves the data as a YAML file corresponding to the given name.

### Example

```coffeescript
import assert from "@dashkite/assert"
import LocalStorage from "@dashkite/sky-local-storage"

await LocalStorage.write "config", key: "value"
data = await LocalStorage.read "config"
assert.equal data.key, "value"
```

## remove

$remove: name \dashrightarrow \emptyset$

Deletes the configuration data from the local filesystem. It removes the YAML file corresponding to the given name.

### Example

```coffeescript
import assert from "@dashkite/assert"
import LocalStorage from "@dashkite/sky-local-storage"

await LocalStorage.remove "config"
```
