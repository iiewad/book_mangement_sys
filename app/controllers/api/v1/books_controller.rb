class Api::V1::BooksController < ApplicationController
  def show
    book = Book.find(params[:id])
    start_time = params[:start_time]
    end_time = params[:end_time]

    borrows = book.borrows
    borrows.where("borrow_date >= ?", start_time) if start_time.present?
    borrows.where("borrow_date <= ?", end_time) if end_time.present?
    income = book.borrow_price * borrows.count

    return render json: {
      code: 0,
      data: {
        borrows_count: borrows.count,
        income: income,
        start_time: start_time,
        end_time: end_time
      },
      msg: "ok"
    }
  end
end
