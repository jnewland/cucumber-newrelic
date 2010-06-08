require 'cucumber/newrelic'

Given /^(my|our) NewRelic license key is '([^\"]*)'$/ do |junk, key|
  Cucumber::Newrelic.new_relic_license_key = key
end