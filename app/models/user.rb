class User < ActiveRecord::Base
	attr_accessor 
	has_secure_password
	validates :first_name,  presence: true, length: { maximum: 50 }, allow_blank: false
	validates :last_name,  presence: true, length: { maximum: 50 }, allow_blank: false
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }, allow_blank: false
    validates :team_id, presence: false, allow_blank: false
    before_save   :downcase_email
end
