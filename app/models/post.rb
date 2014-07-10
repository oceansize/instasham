class Post < ActiveRecord::Base
  # Paperclip helpers
  has_attached_file :image, styles: {thumb: "300x300>"}
  validates_attachment_content_type :image, content_type: ["image/jpeg","image/gif", "image/png"]



  # Paperclip helpers END
end
