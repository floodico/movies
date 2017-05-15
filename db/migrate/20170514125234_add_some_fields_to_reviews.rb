class AddSomeFieldsToReviews < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :serial_id

    add_column :reviews, :reviewable_id, :integer
    add_column :reviews, :reviewable_type, :string
    add_index :reviews, [:reviewable_type, :reviewable_id]
  end
end
