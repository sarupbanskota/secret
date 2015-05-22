class Seminar < ActiveRecord::Base
  belongs_to :user
	validates :headline, presence: true
	validates :duration, presence: true
	validates :description, presence: true
	validates :description, length: { in: 20..1000 }
end
