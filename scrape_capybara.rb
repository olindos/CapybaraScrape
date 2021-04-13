require 'selenium-webdriver'
require 'capybara'
require './capybara_config'
require '/features/browser_login_spec'

class ScrapeCapybara

  def browser
    @session = Capybara.current_session
    driver = @session.driver.browser
    url = "https://www.udemy.com/"
    @session.visit url
  end

  def login
    @session.find('a[data-purpose="header-login"]').click
    @session.find( id: 'email--1').set('olindosyar@gmail.com')
    @session.find( id: 'id_password').set('asdfasdf123')
    @session.find_button( id: 'submit-id-submit').click
  end

  def result
    scrape_result = []
    @session.all('nav ul li a').each do |a|
      scrape_result << { a.text => "#{a['href']}" }
    end
    puts scrape_result
  end

  scrape = ScrapeCapybara.new
  scrape.browser
  scrape.login
  scrape.result

end
