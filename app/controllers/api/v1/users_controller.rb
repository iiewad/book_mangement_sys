class Api::V1::UsersController < Api::BaseController
  def show
    user = User.includes(:borrows).find_by!(user_no: params[:user_no])
    data = {
      balance: user.account&.balance,
      borrow_books: user.borrows.map(&:as_json)
    }
    return render json: {code: 0, data: data, msg: "ok"}
  end

  def init_users
    raise 'Params Error' if params[:amount].to_i <= 0
    users = []
    params[:amount].to_i.times do
      user = User.create!(email: Faker::Internet.email, password: "password")
      Account.create!(user_id: user.id, balance: 1000.to_d)
      users << user
    end
    return render json: {code: 0, data: users.pluck(:user_no), msg: "ok"}, status: 200
  end

end
