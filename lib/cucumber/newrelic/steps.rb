require 'cucumber/newrelic'

Given /^(my|our) NewRelic license key is '([^\"]*)'$/ do |junk, key|
  Cucumber::Newrelic.new_relic_license_key = key
end

When /^I get the '([^\"]*)' from New Relic$/ do |metric|
  Cucumber::Newrelic.new_relic_metric(metric)
end

Given 'that my application is being monitored by New Relic' do
  Cucumber::Newrelic.new_relic_application.should_not be_nil
end

Then /^my application's '([^\"]*)' should (be|be less than|be greater than|equal|not equal|not be) ([\d\.]+)( milliseconds| percent|)$/ do |metric, operator, intended_value, unit|
  real_value = Cucumber::Newrelic.new_relic_metric(metric)
  intended_value = intended_value.to_f
  case operator
  when 'be less than'
    real_value.should < intended_value
  when 'be greater than'
    real_value.should > intended_value
  when 'be', 'equal'
    real_value.should == intended_value
  when 'not be', 'not equal'
    real_value.should_not == intended_value
  end
end