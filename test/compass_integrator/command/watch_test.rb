require "test_helper"
require "compass_integrator/command/watch"
require "compass_integrator/config"

class WatchTest < Minitest::Test
  def setup
    @config = CompassIntegrator::Config.new
    @output = StringIO.new
    @executor = FakeExecutor.new
    @command_args = { output: @output, executor: @executor, config: @config }
  end

  def test_run_comman_puts_output
    CompassIntegrator::Command::Watch.new(@command_args).run
    @output.rewind
    assert_equal 1, @output.each_line.count
  end

  def test_run_comman_call_system
    CompassIntegrator::Command::Watch.new(@command_args).run
    assert_match %r{^compass watch -c .*/config/compass_config.rb}, @executor.exec_calls.first
  end
end
