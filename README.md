# CompassIntegrator

[![Gem Version](https://badge.fury.io/rb/compass_integrator.svg)](http://badge.fury.io/rb/compass_integrator)

## Assumptions

* joins the [compass][compass] gem and its components into project dependencies
* provides tasks for assets management
* provides default compass config

## Installation

Add this line to your application's Gemfile:

    gem 'compass_integrator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install compass_integrator

## Configuration

Through `CompassIntegrator::Config` class:

```ruby
config = CompassIntegrator::Config.new(
  "project_css_dir" => "css_dir"            # default: "stylesheets"
  "project_javascripts_dir" => "js_dir"     # default: "javascripts"
  "project_js_compressed_dir" => "jsc_dir"  # default: "js"
  "project_images_dir" => "img_dir"         # default: "images"
  "project_assets_verbose" => true          # default: false
  "project_cdn_url" => "http://cdn.net"     # default: nil
  "project_font_dir" => "font_dir"          # default: "fonts"
  "project_assets_http_path" => "assets"    # default: "/"
  "project_ui_dir" => "ui_dir"              # default: "."
  "project_public_dir" => "pub_dir"         # default: "public"
  "project_sass_dir" => "sass_dir"          # default: "sass"
  "project_config_dir" => "conf"            # default: "config"
  "project_compass_config_file" => "c.rb"   # default: "compass_config.rb"
)
```

## Usage

Add to project's Rakefile:
```ruby
require 'compass_integrator'
CompassIntegrator::Tasks.load(CompassIntegrator::Config.new)
```

and list available tasks:
```ruby
bundle exec rake -T
# rake ci:clean    # Remove compiled css
# rake ci:compile  # Compile css
# rake ci:config   # Install default compass config
# rake ci:watch    # Run compass watch
```

## Versioning

See [semver.org][semver]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[semver]: http://semver.org/
[compass]: http://compass-style.org/install/
