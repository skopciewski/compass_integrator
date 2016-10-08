require "test_helper"
require "compass_integrator/command/generate_configuration"
require "compass_integrator/config"
require "fileutils"

class GenerateConfigurationTest < Minitest::Test
  def setup
    @test_dir = prepare_test_config_dir
    @config = CompassIntegrator::Config.new project_ui_dir: "test/tmp"
    @output = StringIO.new
    @command_args = { output: @output, executor: nil, config: @config }
  end

  def teardown
    FileUtils.rm_rf @test_dir
  end

  def test_run_command_puts_output
    CompassIntegrator::Command::GenerateConfiguration.new(@command_args).run
    @output.rewind
    assert_equal 1, @output.each_line.count
  end

  def test_run_commad_generate_file
    CompassIntegrator::Command::GenerateConfiguration.new(@command_args).run
    config_path = @test_dir.join(
      @config.fetch("project_config_dir"), @config.fetch("project_compass_config_file")
    )
    assert_equal true, File.exist?(config_path)
  end

  private

  def prepare_test_config_dir
    test_dir = Pathname.new(
      File.join(TestHelper::TESTS_DIR, "tmp")
    )
    FileUtils.rm_rf(Dir.glob("#{test_dir}/*")) if test_dir.exist?
    test_dir
  end
end
