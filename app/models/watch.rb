class Watch < ApplicationRecord
  belongs_to :brand
  
  validates :reference_number, presence: true, uniqueness: true
  validates :model, :price, :movement, :year_of_production, :case_material, :case_diameter, presence: true
end
