class User < ApplicationRecord
	has_secure_password
	has_many :exam_schedule
	validates :email, uniqueness: true, presence: true
	validates :first_name, :last_name,  presence: true
	validates :password, length: { in: 6..20 }
end
