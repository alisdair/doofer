require 'rubygems'
require 'compass'
require 'sinatra'
require 'haml'

configure do
  set :title, File.basename(File.dirname(__FILE__))

  set :haml, :format => :html5
  set :views, "haml"
  Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config', 'compass.rb'))
end

get '/css/:name.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass(:"../sass/#{params[:name]}", Compass.sass_engine_options)
end

get '/' do
  haml :index
end
