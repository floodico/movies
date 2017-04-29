class CreateSeasons < ActiveRecord::Migration[5.0]
  def change
    create_table :seasons do |t|
      t.integer :season_number
      t.integer :serial_id

      t.timestamps
    end
  end
end
