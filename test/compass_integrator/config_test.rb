require "test_helper"
require "compass_integrator/config"

class ConfigTest < Minitest::Test
  def setup
    @config = CompassIntegrator::Config.new
  end

  def test_default_config_is_valid
    assert_equal true, @config.valid?
  end

  def test_configuration_has_default_project_css_dir_value
    assert_equal "stylesheets", @config.fetch("project_css_dir")
  end

  def test_configuration_has_default_project_javascript_dir_value
    assert_equal "javascripts", @config.fetch("project_javascripts_dir")
  end

  def test_configuration_has_default_project_js_compressed_dir_value
    assert_equal "js", @config.fetch("project_js_compressed_dir")
  end

  def test_configuration_has_default_project_images_compressed_dir_value
    assert_equal "images", @config.fetch("project_images_dir")
  end

  def test_configuration_has_default_project_assets_verbose_value
    assert_equal false, @config.fetch("project_assets_verbose")
  end

  def test_configuration_has_default_project_cdn_url_value
    assert_equal nil, @config.fetch("project_cdn_url")
  end

  def test_configuration_has_default_project_font_dir_value
    assert_equal "fonts", @config.fetch("project_font_dir")
  end

  def test_configuration_has_default_project_assets_http_path_value
    assert_equal "/", @config.fetch("project_assets_http_path")
  end

  def test_configuration_has_default_project_ui_dir_value
    assert_equal ".", @config.fetch("project_ui_dir")
  end

  def test_configuration_has_default_project_public_dir_value
    assert_equal "public", @config.fetch("project_public_dir")
  end

  def test_configuration_has_default_project_sass_dir_value
    assert_equal "sass", @config.fetch("project_sass_dir")
  end

  def test_configuration_has_default_project_config_dir_value
    assert_equal "config", @config.fetch("project_config_dir")
  end

  def test_configuration_has_default_project_compass_config_file_value
    assert_equal "compass_config.rb", @config.fetch("project_compass_config_file")
  end
end
