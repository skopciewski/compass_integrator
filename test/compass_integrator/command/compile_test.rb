require "test_helper"
require "compass_integrator/command/compile"
require "compass_integrator/config"

class CompileTest < Minitest::Test
  def setup
    @config = CompassIntegrator::Config.new
    @output = StringIO.new
    @executor = FakeExecutor.new
    @command_args = { output: @output, executor: @executor, config: @config }
  end

  def test_run_comman_puts_output
    CompassIntegrator::Command::Compile.new(@command_args).run
    @output.rewind
    assert_equal 1, @output.each_line.count
  end

  def test_run_comman_call_system
    CompassIntegrator::Command::Compile.new(@command_args).run
    assert_match %r{^compass compile -c .*/config/compass_config.rb}, @executor.system_calls.first
  end
end
