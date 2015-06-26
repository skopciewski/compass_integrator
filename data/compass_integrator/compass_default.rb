require "rgbapng"
require 'sass-globbing'

# Configuration to use when running within Sinatra
project_path          = EnvConfCompass::PROJECT_PATH

# HTTP paths
http_path             = EnvConfCompass::HTTP_PATH
asset_host do |asset|
  EnvConfCompass::ASSET_HOST
end
relative_assets       = EnvConfCompass::RELATIVE_ASSETS

http_stylesheets_path       = EnvConfCompass::HTTP_STYLESHEETS_PATH
http_images_path            = EnvConfCompass::HTTP_IMAGES_PATH
http_generated_images_path  = EnvConfCompass::HTTP_GENERATED_IMAGES_PATH
http_javascripts_path       = EnvConfCompass::HTTP_JAVASCRIPTS_PATH
http_fonts_path             = EnvConfCompass::HTTP_FONTS_PATH

# File system locations
sass_dir              = EnvConfCompass::SASS_DIR
css_dir               = EnvConfCompass::CSS_DIR
images_dir            = EnvConfCompass::IMAGES_DIR
javascripts_dir       = EnvConfCompass::JAVASCRIPTS_DIR
fonts_dir             = EnvConfCompass::FONTS_DIR

# Syntax preference
preferred_syntax      = :sass

# Determines whether line comments should be added to compiled css for easier debugging
line_comments         = false

# CSS output style - :nested, :expanded, :compact, or :compressed
output_style          = EnvConfCompass::OUTPUT_STYLE



require "rgbapng"
require 'sass-globbing'

# Configuration to use when running within Sinatra
project_path          = File.join File.dirname(__FILE__), '..', "sinatra_ui"

# HTTP paths
http_path             = "/"
asset_host do |asset|
  nil
end
relative_assets       = true

http_stylesheets_path       = File.join http_path, "stylesheets"
http_images_path            = File.join http_path, "images"
http_generated_images_path  = http_images_path
http_javascripts_path       = File.join http_path, "javascripts"
http_fonts_path             = File.join http_path, "fonts"

# File system locations
css_dir               = File.join "public", "stylesheets"
sass_dir              = File.join "sass"
images_dir            = File.join "public", "images"
javascripts_dir       = File.join "public", "javascripts"
fonts_dir             = File.join "public", "fonts"

# Syntax preference
preferred_syntax      = :sass

# Determines whether line comments should be added to compiled css for easier debugging
line_comments         = false

# CSS output style - :nested, :expanded, :compact, or :compressed
output_style          = :expanded

