require 'rails_helper'

feature "User visits website" do
  scenario "sees a list of songs and can view them" do
    visit '/songs'
    expect(page.has_content?('Song')).to eq(true)
  end
end
