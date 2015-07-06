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

require "exec_executor"
require "system_executor"
require "stdout_outputter"

namespace :ci do
  desc "Remove compiled css"
  task :clean do
    StdoutOutputter::Outputter.new.write "*** Remove CSS ***"
    SystemExecutor::Executor.new.run "compass clean"
  end

  desc "Compile css"
  task compile: %w(clean) do
    StdoutOutputter::Outputter.new.write "*** Compiling CSS ***"
    SystemExecutor::Executor.new.run "compass compile"
  end

  desc "Run compass watch"
  task :watch do
    StdoutOutputter::Outputter.new.write "*** Watching for changes ***"
    ExecExecutor::Executor.new.run "compass watch"
  end

  task c: %w(compile)
  task w: %w(watch)
end
