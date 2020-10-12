require 'capybara/rails'
require 'capybara/rspec'
require 'capybara-screenshot/rspec'

Capybara.app_host = 'http://localhost:5000'
Capybara::Screenshot.webkit_options = {
  width: 1024,
  height: 768
}
Capybara.default_max_wait_time = 20
Capybara::Screenshot.autosave_on_failure = false
Capybara::Screenshot.prune_strategy = :keep_last_run

RSpec.configure do |config|
  config.after do |example|
    if (example.metadata[:type] == :feature) && example.metadata[:js] && example.exception.present?
      Capybara::Screenshot.screenshot_and_open_image
    end
  end
end
