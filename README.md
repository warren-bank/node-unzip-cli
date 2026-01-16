### [_extract-zip_](https://github.com/warren-bank/node-unzip-cli)

An extremely lightweight cross-platform command-line utility to extract a zip file into a target directory.

More specifically, this project is a thin wrapper that provides a minimal command-line interface to a [slightly modified](https://github.com/warren-bank/fork-node-adm-zip/compare/master...fork) [fork](https://github.com/warren-bank/fork-node-adm-zip/tree/fork) of the [_adm-zip_](https://github.com/cthackers/adm-zip) library.

#### Installation

```bash
npm install --global "@warren-bank/extract-zip"
```

#### Usage

```bash
extract-zip "/path/to/file.zip" ["/path/to/target/directory"] ["/path/to/directory/in/zip/to/extract"]
```

* `["/path/to/target/directory"]`
  - If not specified, the target directory will default to the current working directory.
* `["/path/to/directory/in/zip/to/extract"]`
  - If not specified, the root directory in the zip will be recursively extracted.
  - If the path to a directory within the zip is specified, then only this directory will be recursively extracted.

#### Use Case

* my intended purpose for this utility is its usage in `npm` scripts
* do with it as you like&hellip;

#### Credits

* [_adm-zip_](https://github.com/cthackers/adm-zip) was written by [_Another-D-Mention Software_](https://github.com/cthackers)

#### Legal

* copyright: [_Another-D-Mention Software_](https://github.com/cthackers)
* license: [MIT](https://github.com/cthackers/adm-zip/raw/v0.5.16/LICENSE)
