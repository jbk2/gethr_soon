require 'rails_helper'

describe 'user registration' do
  it 'confirms user registration' do
    visit '/users/index'
    fill_in 'Your email here...', with: 'test1@test.com'
    click_button('Notify me')
    expect(page).to have_content("Congratulations")
  end
end