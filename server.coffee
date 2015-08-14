express	= require 'express'
app	= express()

app.use '/', express.static 'build/'
app.listen 8080, -> console.info 'server started..'
