class ChangeEpisodesTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :episodes, :season_id
    add_column :episodes, :serial_id, :integer
    add_index :episodes, :serial_id
  end
end
