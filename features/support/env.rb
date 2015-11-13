#require 'capybara'
#require 'capybara/cucumber'
#require 'selenium-webdriver'
#require 'site_prism'


#require 'cucumber/rails'
require 'capybara'  
require 'capybara/cucumber'
require 'selenium-webdriver' 
require 'site_prism'
require 'capybara/dsl'


Capybara.default_driver = :selenium

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.javascript_driver = :selenium
  config.run_server = false
  config.default_selector = :css
  config.default_wait_time = 20
  config.app_host = 'file://' + File.dirname(__FILE__) + '/../../test_site/html'

  # capybara 2.1 config options
  config.match = :prefer_exact
  config.ignore_hidden_elements = false
end

Before do
  visit 'http://localhost:3000'
end
  
  
After do
 Capybara.current_session.driver.reset!
end
