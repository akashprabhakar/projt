class Project < ActiveRecord::Base
	belongs_to :company
	has_many :reports
	has_many :users, :through => :reports

	validates :name, length: { minimum: 5 }
	
	validates :default_rate, numericality: { only_integer: true,
											 greater_than: 50,
										 		less_than: 10000 }

	
	validates :slug, length: {minimum: 3}
	validates :slug, uniqueness: true
	validates :company_id, presence: true
	
	scope :lowdefaultrate, -> { where("default_rate < 100") }


	def to_s
		"#{name} (#{company})"
	end
end
