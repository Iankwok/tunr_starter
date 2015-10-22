class NameChnage < ActiveRecord::Migration
  def change
  rename_column :artists, :name_updated, :name
  end
end
