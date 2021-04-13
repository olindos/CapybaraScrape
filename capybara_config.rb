Capybara.register_driver :firefox do |app|
  Capybara::Selenium::Driver.new( app, browser: :firefox )
end

Capybara.javascript_driver = :firefox
Capybara.configure do |config|
  config.default_max_wait_time = 10
  config.default_driver = :firefox
end
