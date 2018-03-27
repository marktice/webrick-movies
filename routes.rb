require 'sequel'
require_relative 'models/Movie.rb'
require_relative 'routes'

class Router < WEBrick::HTTPServlet::AbstractServlet
  def do_GET(req, res)
    case req.path
    when '/movies'
      movies = Movie.all
      res.status = 200
      res['Content-Type'] = 'text/html'
      # movies = Movie.order(:title) #gets all the movies sorted by title
      erb = ERB.new(html_file('index.html.erb')).result(binding)
      res.body = erb
    end
  end
 
  private
  def html_file(file)
    path = File.join(__dir__, 'public', 'movies', file)
    html = File.open(path).read
    return html
  end
end