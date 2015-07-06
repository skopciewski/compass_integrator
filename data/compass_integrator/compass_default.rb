require "rgbapng"
require "sass-globbing"

project_root_path = File.join File.dirname(__FILE__), ".."
project_ui_dir = ENV["PROJECT_UI_DIR"] || "."
project_public_dir = ENV["PROJECT_PUBLIC_DIR"] || "public"
project_sass_dir = ENV["PROJECT_SASS_DIR"] || "sass"
project_assets_http_path = ENV["PROJECT_ASSETS_HTTP_PATH"] || "/"
project_cdn_url = ENV["PROJECT_CDN_URL"] || nil
project_css_dir = ENV["PROJECT_CSS_DIR"] || "stylesheets"
project_img_dir = ENV["PROJECT_IMG_DIR"] || "images"
project_js_dir = ENV["PROJECT_JS_DIR"] || "javascripts"
project_rjs_dir = ENV["PROJECT_RJS_DIR"] || "js"
choosen_js_dir = ENV["PROJECT_ASSETS_VERBOSE"] ? project_js_dir : project_rjs_dir
project_font_dir = ENV["PROJECT_FONT_DIR"] || "fonts"

# Configuration to use when running within Sinatra
project_path          = File.join project_root_path, project_ui_dir

# HTTP paths
http_path             = project_assets_http_path
asset_host do
  project_cdn_url
end
relative_assets       = project_cdn_url.nil?

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
line_comments         = ENV["PROJECT_ASSETS_VERBOSE"] ? true : false

# CSS output style - :nested, :expanded, :compact, or :compressed
output_style          = ENV["PROJECT_ASSETS_VERBOSE"] ? :expanded : :compressed
