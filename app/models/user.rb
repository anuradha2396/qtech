class User < ApplicationRecord
	has_many :results
	has_many :exam_schedules
end
