require "test_helper"
require "compass_integrator"

class CompassIntegratorTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::CompassIntegrator::VERSION
  end
end
