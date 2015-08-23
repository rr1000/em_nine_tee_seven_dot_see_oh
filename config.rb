require 'builder'

activate :directory_indexes

set :css_dir, 'assets/css'
set :js_dir, 'assets/js'
set :images_dir, 'assets/img'

Time.zone = "UTC"

# Markdown Settings
set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true, :tables => true, :with_toc_data => true, :no_intra_emphasis => true
activate :syntax, :wrap => true

# Blog Settings
activate :blog do |blog|
  blog.prefix = "writing"
  # blog.permalink = "blog/{year}/{title}.html"
  blog.sources = "{year}-{month}-{day}-{title}.html"
  blog.taglink = "{tag}.html"
  # blog.layout = "layout_blog"
  blog.summary_length = 250
  blog.tag_template = "writing/tag.html"
  blog.calendar_template = "writing/calendar.html"
end

# Sitemap Settings
set :url_root, 'XXXXX.com'
activate :search_engine_sitemap
page "/sitemap.xml", :layout => false
page "/feed.xml", layout: false

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :directory_indexes
end