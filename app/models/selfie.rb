class Task < ActiveRecord::Base
	# validates :body, presence: true
	validates_presence_of :body
end 