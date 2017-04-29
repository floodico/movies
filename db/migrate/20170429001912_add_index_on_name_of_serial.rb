class AddIndexOnNameOfSerial < ActiveRecord::Migration[5.0]
  def change
    add_index :serials, :name, unique: true
  end
end
