require 'capybara/rspec'
require './capybara_config'

RSpec.describe "the login process", type: :features do

  it 'start browser and current url' do
    @session = Capybara.current_session
    driver = @session.driver.browser
    url = "https://www.udemy.com/"
    @session.visit url
  end

end
