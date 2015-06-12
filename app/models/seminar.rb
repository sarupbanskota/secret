class Seminar < ActiveRecord::Base
  belongs_to :user
	validates :headline, presence: true
	validates :description, presence: true
	validates :description, length: { in: 20..1000 }
	validates_numericality_of :duration, only_integer: true, allow_nil: false
end
