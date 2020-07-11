class Book < ApplicationRecord
  has_many :borrows

  validates :stock, numericality: {greater_than: -1}
end
