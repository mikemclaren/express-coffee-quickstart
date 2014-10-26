bunyan = require 'bunyan'
logger = bunyan.createLogger name: "nodejs-application"

logger.info 'Initializing Bunyan logs.'
module.exports = logger
