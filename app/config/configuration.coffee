# This parses the config.json in the root directory and stores them for future
# use.
log     = require '../helpers/bunyan'
fs      = require 'fs'
log.info "Loading configuration settings . . ."

configFile = 'appConfig.json'

contents = fs.readFileSync(configFile, "utf8")
config   = JSON.parse contents

config   = config[process.env.NODE_ENV || "local"]

module.exports = config
