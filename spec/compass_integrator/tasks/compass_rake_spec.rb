require 'spec_helper'

module CompassIntegrator
  describe 'ci namespace rake tasks' do
    before :all do
      Rake.application.rake_require "compass_integrator/tasks/compass"
      Rake::Task.define_task(:environment)
    end

    Given { allow(SystemExecutor::Executor).to receive(:new).and_return(sexecutor) }
    Given(:sexecutor) { double('sexecutor', run: nil) }
    Given { allow(ExecExecutor::Executor).to receive(:new).and_return(eexecutor) }
    Given(:eexecutor) { double('eexecutor', run: nil) }
    Given { allow(StdoutOutputter::Outputter).to receive(:new).and_return(outputter) }
    Given(:outputter) { double('outputter', write: nil) }

    describe 'ci:clean' do
      When { run_task('ci:clean') }
      Then { expect(sexecutor).to have_received(:run).with('compass clean') }
    end

    describe 'ci:compile' do
      When { run_task('ci:compile') }
      Then { expect(sexecutor).to have_received(:run).with('compass clean') }
      And { expect(sexecutor).to have_received(:run).with('compass compile') }
    end

    describe 'ci:watch' do
      When { run_task('ci:watch') }
      Then { expect(eexecutor).to have_received(:run).with('compass watch') }
    end

  end
end
