class Post < ApplicationRecord
    
#only a user can access the post link
    belongs_to :user
    
#Sourced from papreclip-github:    https://github.com/thoughtbot/paperclip - I removed the url as we will be uploading from frontend
#I have used '#' instead of '>' - this will give me a crop effect.
 
    
    has_attached_file :post_img, styles: { medium: "800x800>", thumb: "100x100#" }
    validates_attachment_content_type :post_img, content_type: /\Aimage\/.*\z/
    
#    validates_attachment_content_type :post_img, :content_type => ["post_img/jpg", "post_img/jpeg", "post_img/png", "post_img/gif"] 


end
