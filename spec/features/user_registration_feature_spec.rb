require 'rails_helper'


describe 'homepage' do
  context 'not signed up yet' do
    it 'should display a sign up form' do
      visit '/'
      expect(page).to have_content "Sign up"
    end
  end
end

describe 'registering a user' do
  it 'confirms user registration' do
    visit '/'
    fill_in 'Name here...', with: 'test name'
    fill_in 'Your email here...', with: 'test1@test.com'
    click_button 'Notify me'
    expect(current_path).to eq '/'
    expect(page).to have_content "test1@test.com"
    expect(page).not_to have_content "Sign up"
  end
end