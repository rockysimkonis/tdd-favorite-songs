require 'rails_helper'

RSpec.describe Song, type: :model do
  let(:song) { Song.new }

  describe "stuff of songs" do
    it "has zero songs to begin with" do
      expect(Song.count).to eq 0
    end

    it "has one song after adding one" do
      Song.create
      expect(Song.count).to eq 1
    end

    it "has none after one was created in a previous example" do
      expect(Song.count).to eq 0
    end
  end

  describe "many songs" do
    xit "list of songs on home page" do
      expect(Song.recent. match_array(Song.order("created_at DESC")))
    end
  end

  describe "user song relationship" do
    it "has many users" do
      song.save
      song.users << User.create
      expect(Song.last.users.count > 0).to be true
    end
  end
end
