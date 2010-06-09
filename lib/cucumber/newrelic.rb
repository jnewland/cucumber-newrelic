require 'active_resource'
require 'newrelic_rpm'
require 'new_relic_api'

module Cucumber
  module Newrelic

    class << self
      attr_accessor :new_relic_application_id
    end

    def included
      #kludge to use the NewRelic API outside of rails
      NewRelicApi.host = "rpm.newrelic.com"
      NewRelicApi.port = 80
    end

    def self.new_relic_license_key=(key)
      NewRelicApi.license_key = key
    end

    def self.new_relic_metric(name)
      new_relic_values.find { |v| v.name.downcase == name.to_s.downcase }.metric_value
    end

    def self.new_relic_application
      if self.new_relic_application_id
        @application ||= NewRelicApi::Account.find(:first).applications.find  { |a| a.id = self.new_relic_application_id }
      else
        @application ||= NewRelicApi::Account.find(:first).applications.first
      end
    end

  protected

    def self.new_relic_values
      @values ||= new_relic_application.threshold_values
    end

  end
end

World(Cucumber::Newrelic)
require 'cucumber/newrelic/steps'