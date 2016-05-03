require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) {User.new}
  let(:song) {Song.new}

  describe "user song relationship" do
    it "has many songs" do
      user.songs << song
      user.save
      expect(user.reload.songs.count > 0).to be true
    end
  end
end
