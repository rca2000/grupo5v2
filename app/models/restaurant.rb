class Restaurant < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_attached_file :avatar, 
                    styles: {medium: "300x300>", 
                    thumb: "100x100>" }, 
 default_url: "/images/:style/missing.png"

# Validate presence
validates :avatar, attachment_presence: true, presence: true
# Validate two or more conditions
validates_attachment :avatar, 
 presence: true,
 content_type: 
 {content_type: 
  ["image/jpeg", "image/gif", "image/png"]
 },
 size: { in: 0..1024.kilobytes }

  
end
