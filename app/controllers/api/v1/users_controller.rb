class Api::V1::UsersController < Api::BaseController
  def init_users
    raise 'Params Error' if params[:amount].to_i <= 0
    users = []
    params[:amount].to_i.times do
      users << User.create(email: Faker::Internet.email, password: "password")
    end
    return render json: {code: 0, data: users.pluck(:user_no), msg: "ok"}
  end

end
