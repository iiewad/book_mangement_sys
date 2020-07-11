class Book < ApplicationRecord
  has_many :borrows
  has_many :users, through: :borrows
  validates :stock, numericality: {greater_than: -1}

  def as_json(options = {})
    {
      title: title,
      borrow_price: borrow_price,
      isbn: isbn,
      author: author,
      publisher: publisher,
      publish_date: publish_date.strftime("%FT%T"),
    }
  end
end
