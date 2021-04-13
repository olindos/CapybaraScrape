require 'capybara/rspec'
RSpec.describe 'login webpage', type: :feature do
  it 'successfully login' do
    visit '@browser.current_url'
    click_link 'Log in'
    within '#login' do
      fill_in 'email', with: 'olindosyar@gmail.com'
      fill_in 'password', with: 'asdfasdf123'
    end
    click_button 'log in'
    expect(page).to have_content 'successfully login'
  end
end
