require './app'

use Rack::Coffee, root: 'public', urls: '/js'

run Sinatra::Application
