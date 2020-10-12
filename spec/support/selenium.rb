require 'selenium/webdriver'
require 'capybara/rspec'

Capybara.register_driver :selenium do |app|
  options = Selenium::WebDriver::Chrome::Options.new(
    args: %w[--ignore-certificate-errors --disable-popup-blocking]
  )
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.javascript_driver = :selenium
