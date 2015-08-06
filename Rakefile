desc "BUILD STATIC SITE"
task :build do
  puts "## BUILDING"
  status = system("middleman build --clean")
  puts status ? "OK" : "FAILED"
end

desc "RUN MIDDLEMAN SERVER"
task :view do
  system("middleman server -p 2113")
end

desc "WATCH AND COMPRESS SASS"
task :sass do
  system("cd source/assets/css && sass --watch styles.scss:styles.css --style compressed")
end