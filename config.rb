###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

activate :blog do |blog|
  blog.prefix = "blog"
  blog.permalink = "{title}"
  blog.layout = "article_layout"
  blog.paginate = true
  blog.page_link = "p{num}"
  blog.per_page = 8
end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end

set :css_dir, 'stylesheets'

#Make all links relative by default
set :relative_links, true

#Set markdown engine and syntax highlighting
activate :syntax
set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true

#Ignore github syntax file
ignore "source/stylesheets/github_highlighting.css.erb"

#Pretty urls
activate :directory_indexes
