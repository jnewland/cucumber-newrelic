require 'rubygems'
require 'rake'
$LOAD_PATH.unshift 'lib'
require 'cucumber/newrelic/version'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.version = Cucumber::Newrelic::VERSION
    gem.name = "cucumber-newrelic"
    gem.summary = %Q{Cucumber steps for verifing metrics from NewRelic's API}
    gem.description = %Q{Cucumber steps for verifing metrics from NewRelic's API}
    gem.email = "jnewland@gmail.com"
    gem.homepage = "http://github.com/jnewland/cucumber-newrelic"
    gem.authors = ["Jesse Newland"]
    gem.add_dependency "newrelic_rpm", "~> 2.10.6"
    gem.add_dependency "activeresource", "~> 2.3.8"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = Cucumber::Newrelic::VERSION

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "cucumber-newrelic #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
