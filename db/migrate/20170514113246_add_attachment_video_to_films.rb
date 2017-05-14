class AddAttachmentVideoToFilms < ActiveRecord::Migration
  def self.up
    change_table :films do |t|
      t.attachment :video
    end
  end

  def self.down
    remove_attachment :films, :video
  end
end
