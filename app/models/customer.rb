class Customer < ApplicationRecord
	validates :first_name, :last_name, :mobile_number, :house_number, :landmark_location, :id_type, :id_number, :town, presence: true
	validates :age, numericality: { only_integer: true, greater_than: 17 }
	validates :number_of_children, numericality: { only_integer: true, greater_than: -1 }
end
