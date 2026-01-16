#! /usr/bin/env node

const AdmZip = require('adm-zip')
const fs     = require('fs')
const path   = require('path')

if (process.argv.length < 3) {
  console.log('usage: extract-zip "/path/to/file.zip" ["/path/to/target/directory"]')
  process.exit(0)
}

const zip_filepath   = path.resolve(process.argv[2])
const target_dirpath = (process.argv.length < 4)
  ? process.cwd()
  : path.resolve(process.argv[3])

try {
  const zip = new AdmZip(zip_filepath)
  zip.extractAllTo(target_dirpath, /*overwrite*/ true)
  console.log('OK')
}
catch(error) {
  console.log(error.message)
  process.exit(1)
}
