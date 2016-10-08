require "rgbapng"
require "sass-globbing"
require "compass_integrator/config"

config = CompassIntegrator::Config.new
project_root_path = File.join File.dirname(__FILE__), ".."
project_ui_dir = config.fetch("project_ui_dir")
project_public_dir = config.fetch("project_public_dir")
project_sass_dir = config.fetch("project_sass_dir")
project_assets_http_path = config.fetch("project_assets_http_path")
project_cdn_url = config.fetch("project_cdn_url")
project_css_dir = config.fetch("project_css_dir")
project_img_dir = config.fetch("project_images_dir")
project_js_dir = config.fetch("project_javascripts_dir")
project_rjs_dir = config.fetch("project_js_compressed_dir")
choosen_js_dir = config.fetch("project_assets_verbose") ? project_js_dir : project_rjs_dir
project_font_dir = config.fetch("project_font_dir")

# Configuration to use when running within Sinatra
project_path = File.join project_root_path, project_ui_dir

# HTTP paths
http_path = project_assets_http_path
asset_host do
  project_cdn_url
end
relative_assets = project_cdn_url.nil?

http_stylesheets_path       = File.join http_path, project_css_dir
http_images_path            = File.join http_path, project_img_dir
http_generated_images_path  = http_images_path
http_javascripts_path       = File.join http_path, choosen_js_dir
http_fonts_path             = File.join http_path, project_font_dir

# File system locations
sass_dir              = project_sass_dir
css_dir               = File.join project_public_dir, project_css_dir
images_dir            = File.join project_public_dir, project_img_dir
javascripts_dir       = File.join project_public_dir, choosen_js_dir
fonts_dir             = File.join project_public_dir, project_font_dir

# Syntax preference
preferred_syntax      = :sass

# Determines whether line comments should be added to compiled css for easier debugging
line_comments         = config.fetch("project_assets_verbose") ? true : false

# CSS output style - :nested, :expanded, :compact, or :compressed
output_style          = config.fetch("project_assets_verbose") ? :expanded : :compressed
