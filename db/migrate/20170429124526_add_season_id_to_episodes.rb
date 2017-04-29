class AddSeasonIdToEpisodes < ActiveRecord::Migration[5.0]
  def change
    add_column :episodes, :season_id, :integer
  end
end
