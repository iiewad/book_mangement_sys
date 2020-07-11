class Borrow < ApplicationRecord
  belongs_to :user
  belongs_to :book

  def as_json option = {}
    {
      borrow_date: borrow_date.strftime("%FT%T"),
      return_date: return_date.strftime("%FT%T"),
      remark: remark,
      book_info: self.book.as_json,
    }
  end

end
