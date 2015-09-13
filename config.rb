# *********
# Ryan S. Rich 2015
# *********
# M97.co Config
require 'builder'
Time.zone = "UTC"

# Set Asset Directories
set :css_dir, 'assets/css'
set :js_dir, 'assets/js'
set :images_dir, 'assets/img'

# Activate Directory Indexes for Clean URLs
activate :directory_indexes

# Build Config
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :directory_indexes
end

# Set markdown to redcarpet
set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true, :tables => true, :with_toc_data => true, :no_intra_emphasis => true

activate :syntax, :wrap => true

# Set Root URL for advanced sitemap config
set :url_root, 'XXXXX.com'
activate :search_engine_sitemap
page "/sitemap.xml", :layout => false

# Blog Config
activate :blog do |blog|
  blog.prefix = "blog"
  blog.permalink = "{title}.html"
  blog.sources = "{year}-{month}-{day}-{title}.html"
  blog.layout = "layout_blog"
  blog.summary_length = 100
end
# *********
# Ryan S. Rich 2015
# *********