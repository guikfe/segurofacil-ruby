require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "dotenv/tasks"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

task :console => :dotenv do
  exec "irb -r segurofacil -I ./lib"
end
