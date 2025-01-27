class Brand < ApplicationRecord
  has_many :watches, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :country, presence: true
end
