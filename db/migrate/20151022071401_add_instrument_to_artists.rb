class AddInstrumentToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :instruments, :string
    remove_column :artists, :date_of_birth
    rename_column :artists, :year_of_birth, :year_of_birth_new
  end

    def up
    remove_column :artists, :date_of_birth
  end
end
