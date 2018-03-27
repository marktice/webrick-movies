require 'webrick'
require_relative 'routes'

server = WEBrick::HTTPServer.new(Port: 3000)
trap 'INT' do server.shutdown end
server.mount '/', Router
server.start