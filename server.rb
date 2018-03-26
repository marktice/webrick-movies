require 'sequel'
require 'webrick'

require_relative 'models/movies.rb'

DB = Sequel.connect('sqlite://development')

class Router < WEBrick::HTTPServlet::AbstractServlet
  def do_GET(request, response)

    case request.path
    when '/'
      response.status = 200
      response['Content-Type'] = 'text/html'
      movies = Movie.order(:title) #gets all the movies sorted by title
      render = ERB.new(html_file('index.html.erb'))
      response.body = render.result(binding)

      # html = """
      # <html>
      # <body>
      # <p>Description: #{movies.first[:title]}</p>
      # <p>Amount: #{movies.year}</p>
      # <p>Currency: #{movies.genre}</p>
      # </body>
      # </html>
      # """
    end
  end
 
  private
  def html_file(file)
    path = File.join(__dir__, 'public', file)
    html = File.open(path).read
    return html
  end
 end
 
 server = WEBrick::HTTPServer.new(Port: 3000)
 trap 'INT' do server.shutdown end
 server.mount '/', Router
 server.start