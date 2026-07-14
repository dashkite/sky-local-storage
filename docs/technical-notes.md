# Technical Notes

### Storage Location

The storage root resolves to the `.sky` directory located in the developer's home folder (`~/.sky`).

### File Format

All configuration data is serialized and stored as YAML files. The library automatically appends the `.yaml` extension to the provided configuration names.

### Zephyr Integration

Sky Local Storage relies on DashKite's Zephyr library for its underlying file operations. Zephyr provides a consistent interface for reading and writing structured data. It handles the serialization and deserialization processes internally, converting objects to and from YAML based on the file extension.

### Motivation: Cloud-Native Development

The primary purpose of this library is to support per-machine configuration that backs per-developer cloud infrastructure. By facilitating local management of configuration data for remote environments, the library reduces the reliance on `localhost` for testing and development. When cloud deployments are easy and rapid, developers can work directly in the cloud. This approach eliminates the common "it works on my machine" discrepancy, ensuring the development environment matches production.
