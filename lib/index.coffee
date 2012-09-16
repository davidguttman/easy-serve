express = require 'express'
app = express()

staticDir = process.cwd()

app.use express.directory staticDir
app.use express.static staticDir

port = process.env.PORT or 8000

app.listen port, ->
  console.log 'Static-Server listening on port', port