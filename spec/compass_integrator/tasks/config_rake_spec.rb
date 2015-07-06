require "spec_helper"

module CompassIntegrator
  describe "ci namespace rake tasks" do
    before :all do
      Rake.application.rake_require "compass_integrator/tasks/config"
      Rake::Task.define_task(:environment)
    end

    Given { allow(SystemExecutor::Executor).to receive(:new).and_return(executor) }
    Given(:executor) { double("executor", run: nil) }
    Given { allow(StdoutOutputter::Outputter).to receive(:new).and_return(outputter) }
    Given(:outputter) { double("outputter", write: nil) }

    describe "ci:config" do
      When { run_task("ci:config") }
      Then { expect(executor).to have_received(:run).twice }
    end
  end
end
