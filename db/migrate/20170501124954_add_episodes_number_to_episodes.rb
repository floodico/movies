class AddEpisodesNumberToEpisodes < ActiveRecord::Migration[5.0]
  def change
    add_column :episodes, :episode_number, :integer
  end
end
