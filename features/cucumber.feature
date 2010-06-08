Feature: Setup
  As a dev wanting to verify New Relic API 
  You should be able to initialize auth details in the background

  Background:
    Given your we load our NewRelic license key from the config file

  Scenario: Installing the gem
    When a scenario runs
    Then the NewRelic API is responsive