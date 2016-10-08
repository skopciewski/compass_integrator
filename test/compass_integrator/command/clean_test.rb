require "test_helper"
require "compass_integrator/command/clean"
require "compass_integrator/config"

class CleanTest < Minitest::Test
  def setup
    @config = CompassIntegrator::Config.new
    @output = StringIO.new
    @executor = FakeExecutor.new
    @command_args = { output: @output, executor: @executor, config: @config }
  end

  def test_run_comman_puts_output
    CompassIntegrator::Command::Clean.new(@command_args).run
    @output.rewind
    assert_equal 1, @output.each_line.count
  end

  def test_run_comman_call_system
    CompassIntegrator::Command::Clean.new(@command_args).run
    assert_match %r(^compass clean -c .*/config/compass_config.rb), @executor.system_calls.first
  end
end
