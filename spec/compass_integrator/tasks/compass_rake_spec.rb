require 'spec_helper'

module CompassIntegrator
  describe 'ci namespace rake tasks' do
    before :all do
      Rake.application.rake_require "compass_integrator/tasks/compass"
      Rake::Task.define_task(:environment)
    end

    Given { allow(SystemExecutor::Executor).to receive(:new).and_return(executor) }
    Given(:executor) { double('executor', run: nil) }
    Given { allow(StdoutOutputter::Outputter).to receive(:new).and_return(outputter) }
    Given(:outputter) { double('outputter', write: nil) }

    describe 'ci:clean' do
      When { run_task('ci:clean') }
      Then { expect(executor).to have_received(:run).with('compass clean') }
    end

    describe 'ci:compile' do
      When { run_task('ci:compile') }
      Then { expect(executor).to have_received(:run).with('compass clean') }
      And { expect(executor).to have_received(:run).with('compass compile') }
    end

    describe 'ci:watch' do
      When { run_task('ci:watch') }
      Then { expect(executor).to have_received(:run).with('compass watch') }
    end

  end
end
