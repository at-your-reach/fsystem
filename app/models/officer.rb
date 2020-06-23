class Officer < ApplicationRecord
  validates :name, :nationality, :mobile_number, :address, presence: true
	validates :age, numericality: { only_integer: true, greater_than: 17 }
end
