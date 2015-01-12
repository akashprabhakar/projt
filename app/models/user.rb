class User < ActiveRecord::Base
	belongs_to :company
	has_many :reports
	has_many :projects, :through => :reports

	validates :fname, length: { minimum: 2 }
	validates :lname, length: { minimum: 5 }
	
	def to_s
		"#{fname} #{lname}"
	end
end
