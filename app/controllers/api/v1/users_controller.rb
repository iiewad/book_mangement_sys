class Api::V1::UsersController < Api::BaseController
  def init_users
    amount = params[:amount].to_i
    users = []
    if amount.to_i <= 0
      return render json: {error: "xxx"}
    else
      amount.times do
        users << User.create(email: Faker::Internet.email, password: "password")
      end
    end
    return render json: {data: users.pluck(:user_no)}
  end
end
