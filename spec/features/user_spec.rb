require 'rails_helper'

feature "User management" do
  scenario "sees a registration form" do
    visit '/users/new'
    expect(page.has_content?('Register for a new account')).to eq(true)
    within("form") do
      fill_in 'Email', :with => 'user@example.com'
      fill_in 'Password hash', :with => 'password'
    end
    click_button 'Register'

    # Verify that the user got created
    expect(User.last.email).to eq('user@example.com')

    # Verify that on the next page we're actually logged in
    expect(page.has_content?('Log out')).to eq(true)
    click_link 'Log out'
    expect(page.has_content?('Log in')).to eq(true)
  end

end
