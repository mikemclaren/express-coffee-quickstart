app    = require './app/config/init'
log    = require './app/helpers/bunyan'
routes = require './app/routes'

# Bind the routes to be app.
routes app

# Spin up the server.
server = app.listen app.get('port'), () ->
  log.info "#{app.get 'appName'} running!
    Listening on port #{server.address().port}."
