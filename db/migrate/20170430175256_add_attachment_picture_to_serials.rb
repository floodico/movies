class AddAttachmentPictureToSerials < ActiveRecord::Migration
  def self.up
    change_table :serials do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :serials, :picture
  end
end
