class AddIndexOnEpisodeIdOnReviews < ActiveRecord::Migration[5.0]
  def change
    add_index :reviews, :episode_id
  end
end
