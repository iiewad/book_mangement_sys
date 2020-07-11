class Account < ApplicationRecord
  validates :balance, numericality: {greater_than: -1}
end
