desc "Build the site from source to build"
task :build do
  status = system("middleman build --clean")
  puts status ? "OK" : "FAILED"
end

desc "Run middleman server"
task :view do
  system("middleman server -p 2112")
end

desc "Watch and compress Sass"
task :sass do
  system("cd source/assets/css && sass --watch styles.scss:styles.css --style compressed")
end

desc "Run simple web server"
task :static_view do
	system("cd build && python -m SimpleHTTPServer 8888")
end