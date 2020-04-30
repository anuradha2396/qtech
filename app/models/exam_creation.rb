class ExamCreation < ApplicationRecord

	belongs_to :subject
	has_many :topics
	has_many :Questions
end
