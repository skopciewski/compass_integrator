require "test_helper"
require "compass_integrator/tasks"

class TasksTest < Minitest::Test
  def test_set_configuration
    CompassIntegrator::Tasks.load("conf")
    assert_equal "conf", CompassIntegrator::Tasks.config
  end
end
