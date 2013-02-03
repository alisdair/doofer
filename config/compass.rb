if defined?(Sinatra)
  css_dir = "css"
  project_path = Sinatra::Application.root
  environment = :development
else
  css_dir = File.join 'public', 'css'
  relative_assets = true
  environment = :production
end

sass_dir = "sass"
images_dir = "images"
javascripts_dir = "javascripts"
preferred_syntax = :sass
