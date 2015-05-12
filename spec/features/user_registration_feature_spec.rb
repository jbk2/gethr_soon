require 'rails_helper'


describe 'homepage' do
  context 'not signed up yet' do
    it 'should display a sign up form' do
      visit '/users'
      expect(page).to have_content "Sign up"
    end
  end
end

describe 'registering a user' do
  it 'confirms user registration' do
    visit '/users'
    fill_in 'Your email here...', with: 'test1@test.com'
    click_button 'Notify me'
    expect(current_path).to eq '/users'
    expect(page).to have_content "Congratulations - test1@test.com - You're on the Beta list."
  end
end