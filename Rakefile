desc "Build the site from source to build"
task :b do
  status = system("middleman build --clean")
  puts status ? "OK" : "FAILED"
end

desc "Run middleman server"
task :r do
  system("middleman server -p 2001")
end

desc "Watch and compress Sass"
task :s do
  system("cd source/assets/css && sass --watch styles.scss:styles.css --style compressed")
end