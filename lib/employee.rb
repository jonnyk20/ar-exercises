class Employee < ActiveRecord::Base
  validates :first_name, :last_name, presence: true

  #validates :value, :inclusion => {:in => [40,20]}
  validates_inclusion_of :hourly_rate, in: 40..200
  belongs_to :store, required: true
end
