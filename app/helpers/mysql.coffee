mysql   = require 'mysql'
Promise = require 'bluebird'
configs = require '../config/configuration'
log     = require './bunyan'

# Create the pool based on configurations.
pool = mysql.createPool configs.mysql

# Returns as a promise so chaining can happen.
# Returns the connection, so MAKE SURE TO RELEASE.
module.exports = () ->
  new Promise (resolve, reject) ->
    pool.getConnection (err, conn) ->
      if err?
        log.error error: err.stack, 'Error connecting to MySQL connection!'
        reject err
      else resolve Promise.promisifyAll conn
