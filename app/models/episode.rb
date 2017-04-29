class Episode < ApplicationRecord
  has_attached_file :video
  validates_attachment_content_type :video, :content_type => ['video/mp4']
  
  belongs_to :season
end
