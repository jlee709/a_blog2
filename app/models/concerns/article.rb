class Article < ActiveRecord::Base 
    belongs_to :user
    validates  :title, presence: true, length: {minimum: 3, maximum:50}
    validates  :description, presence: true,  length: {minimum: 5, maximum:50}
    validates  :user_id, presence: true
 
 #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

   # validates :email, presence: true, length: { maximum: 105 },
   # uniqueness: { case_sensitive: false },
   # format: { with: VALID_EMAIL_REGEX }

end
