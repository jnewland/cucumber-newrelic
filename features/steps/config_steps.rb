require 'yaml'
Given /^your we load our NewRelic license key from the config file$/ do
  key = YAML.load_file(File.join(Dir.pwd, 'config', 'newrelic.yml'))['production']['license_key']
  Given "our NewRelic license key is '"+key+"'"
end

When /^a scenario runs$/ do
  # noop
end

Then /^the NewRelic API is responsive$/ do
  Then 'that my application is being monitored by New Relic'
end
