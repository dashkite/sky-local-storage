import Path from "node:path"
import Zephyr from "@dashkite/zephyr"

LocalStorage =
  root: Path.join "#{ process.env.HOME }", ".sky"
  path: ( name ) -> Path.join @root, "#{ name }.yaml"
  read: ( name ) -> Zephyr.read @path name
  write: ( name, data ) -> Zephyr.write ( @path name ), data

export default LocalStorage
export { LocalStorage }