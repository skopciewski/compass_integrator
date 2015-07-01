require "rgbapng"
require 'sass-globbing'

_root_path = File.join File.dirname(__FILE__), '..'
_project_dir = ENV['project_dir'] || 'sinatra_ui'
_public_dir = ENV['public_dir'] || 'public'
_sass_dir = ENV['sass_dir'] || 'sass'
_http_path = ENV['http_path'] || '/'
_cdn_url = ENV['cdn_url'] || nil
_css_dir = ENV['css_dir'] || 'stylesheets'
_img_dir = ENV['img_dir'] || 'images'
_js_dir = ENV['js_dir'] || 'javascripts'
_font_dir = ENV['font_dir'] || 'fonts'
_debug = ENV['debug'] || false

# Configuration to use when running within Sinatra
project_path          = File.join _root_path, _project_dir

# HTTP paths
http_path             = _http_path
asset_host do |asset|
  _cdn_url
end
relative_assets       = _cdn_url.nil?

http_stylesheets_path       = File.join http_path, _css_dir
http_images_path            = File.join http_path, _img_dir
http_generated_images_path  = http_images_path
http_javascripts_path       = File.join http_path, _js_dir
http_fonts_path             = File.join http_path, _font_dir

# File system locations
sass_dir              = _sass_dir
css_dir               = File.join _public_dir, _css_dir
images_dir            = File.join _public_dir, _img_dir
javascripts_dir       = File.join _public_dir, _js_dir
fonts_dir             = File.join _public_dir, _font_dir

# Syntax preference
preferred_syntax      = :sass

# Determines whether line comments should be added to compiled css for easier debugging
line_comments         = (_debug) ? true : false

# CSS output style - :nested, :expanded, :compact, or :compressed
output_style          = (_debug) ? :expanded : :compressed

