require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application


describe('Testing the number conversion path', {:type => :feature}) do
  it('Retreives a number entry from a form, filled out by the user, sends that entry through the numbers_to_words method, and outputs a page to the user with the number turned into a word.') do
    visit('/')
    fill_in('number_to_convert', :with => '476')
    click_button('submit')
    expect(page).to(have_content('four hundred seventy six'))
  end
end
