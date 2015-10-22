class AddColumn < ActiveRecord::Migration
  def change
  add_column :artists, :Address, :string
  end
end
