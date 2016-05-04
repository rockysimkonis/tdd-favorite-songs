require 'rails_helper'

feature "User visits website" do
  scenario "sees a list of songs and can view them" do
    Song.create(title: "It's a Wonderful World", artist: "MC Hammer")
    visit '/songs'
    expect(page.has_content?('Song')).to eq(true)
    expect(page.has_content?("It's a Wonderful World")).to eq(true)
    expect(page.has_content?("MC Hammer")).to eq(true)
  end
end
