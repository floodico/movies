class AddSlugToSerials < ActiveRecord::Migration[5.0]
  def change
    add_column :serials, :slug, :string
    add_index :serials, :slug, unique: true
  end
end
