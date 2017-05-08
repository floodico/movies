class ReviewsToSerials < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :episode_id
    add_column :reviews, :serial_id, :integer
    add_index :reviews, :serial_id
  end
end
