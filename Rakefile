require 'fileutils'

task :default => [:link]

desc "Add this doofer to your pow configuration"
task :link do
  app = File.basename(File.expand_path(File.dirname(__FILE__)))
  pow = File.join(ENV['HOME'], '.pow', app)
  rm pow
  symlink Dir.pwd, pow
end

desc "Install the doofer script"
task :install do
  bindir = File.join(ENV['HOME'], 'bin')
  bindir = "/usr/local/bin" unless File.exists? bindir
  directory bindir
  cp File.join(File.dirname(__FILE__), "bin", "doofer"), bindir
end
