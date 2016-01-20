class Book < ActiveRecord::Base

  has_attached_file :photo,
                    styles: { thumb: "100X100", medium: "270x170" , big: "640x640",
                              :original => { :geometry => '1200>' }}
  validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
