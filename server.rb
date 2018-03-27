require 'webrick'
require_relative 'routes'

# create and mount a server
server = WEBrick::HTTPServer.new(Port: 3000)

# add the router to the server
server.mount '/', Router
trap 'INT' do server.shutdown end

server.start