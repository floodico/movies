class AddEpisodeIdToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :episode_id, :integer
  end
end
