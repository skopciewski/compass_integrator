# encoding: utf-8

# Copyright (C) 2015 Szymon Kopciewski
#
# This file is part of CompassIntegrator.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

require 'system_executor'
require 'stdout_outputter'

namespace :ci do

  desc 'Install default compass config'
  task :config do
    default_config_path = File.join(
      Gem.datadir('compass_integrator'),
      'compass_default.rb'
    )
    current_path = Dir.pwd
    current_configdir_path = File.join(current_path, 'config')
    current_config_path = File.join(current_configdir_path, 'compass.rb')
    unless File.exist?(current_config_path)
      StdoutOutputter::Outputter.new.write '*** Creating default compass configuration ***'
      SystemExecutor::Executor.new.run "mkdir -p #{current_config_path}"
      SystemExecutor::Executor.new.run "cp #{default_config_path} #{current_config_path}"
    end
  end

end
