class AddAttachmentPictureToFilms < ActiveRecord::Migration
  def self.up
    change_table :films do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :films, :picture
  end
end
