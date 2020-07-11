class Api::V1::BorrowsController < ApplicationController

  def create
    user = User.find_by(user_no: params[:user_no])
    books = Book.where(isbn: params[:isbns])
    borrows = []
    Borrow.transaction do
      user_account = user.account
      user_balance = user_account.balance
      borrow_books_price = books.pluck(:borrow_price).sum
      raise "Lack of balance" if user_balance < borrow_books_price

      # book - stock
      books.each do |book|
        # 借书的业务应该是不会出现库存不足的情况
        # raise "Insufficient inventory" if book.stock <= 0
        book.update!(stock: book.stock - 1)
        # TODO set borrow queue
        borrow = Borrow.create!( user_id: user.id,
                                book_id: book.id,
                                isbn: book.isbn,
                                borrow_date: Time.now,
                                return_date: Time.now + 1.month)
        borrows << borrow
      end

      # account - balance
      user_account.update!(balance: user_balance - borrow_books_price)
    end
    return render json: {code: 0, data: borrows, msg: "ok"}
  end

end
