class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
    t.string :name
    t.string :photo_url
    t.string :nationality
    t.datetime :date_of_birth
    t.datetime :year_of_birth
    t.boolean :is_female
    t.timestamps
  end
  end
end
