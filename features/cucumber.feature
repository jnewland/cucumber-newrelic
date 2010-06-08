Feature: Setup
  As a dev wanting to verify New Relic API 
  You should be able to initialize auth details in the background

  Background:
    Given your we load our NewRelic license key from the config file

  Scenario: Installing the gem
    When a scenario runs
    Then the NewRelic API is responsive

  Scenario: Less than
    Given that my application is being monitored by New Relic
    Then my application's 'response time' should be less than 500 milliseconds

  Scenario: Equal
    Given that my application is being monitored by New Relic
    Then my application's 'apdex' should be 1

  Scenario: Greater than
    Given that my application is being monitored by New Relic
    Then my application's 'apdex' should be greater than 0.5

  Scenario: Not equal
    Given that my application is being monitored by New Relic
    Then my application's 'apdex' should not be 0