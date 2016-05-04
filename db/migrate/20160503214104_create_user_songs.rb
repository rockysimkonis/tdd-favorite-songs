class CreateUserSongs < ActiveRecord::Migration
  def change
    create_table :user_songs do |t|
      t.references :user
      t.references :song
      t.timestamps null: false
    end
  end
end
