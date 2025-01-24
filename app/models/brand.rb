class Brand < ApplicationRecord
  has_many :watches, dependent: :destroy
end
