class User < ApplicationRecord
	belongs_to: result
	has_many: exam_schedule
	validates :email, uniqueness: true
	validates :first_name, :last_name,  presence: true
	validates :password, length: { in: 6..20 }
    validates :phone_no, length: { in: 10..20 }

end
