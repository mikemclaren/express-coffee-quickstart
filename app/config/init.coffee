express      = require 'express'
jwt          = require 'express-jwt'
cookieParser = require 'cookie-parser'
bodyParser   = require 'body-parser'
configs      = require './configuration'

app = express()

# If you want JWTs.
# app.use jwt(secret: configs.jwtSecret).unless path: [
#     '/register'
#     '/authenticate'
#   ]

app.use bodyParser.json()
app.use bodyParser.urlencoded extended: true
app.use cookieParser()

app.set 'port',    process.env.PORT || configs.port || 3000
app.set 'appName', configs.applicationName || 'NodeJS Application'

module.exports = app
