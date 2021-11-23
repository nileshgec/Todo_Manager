# users_controller.rb
class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render plain: User.all.to_a
  end

  def login
    email = params[:email]
    password = params[:password]
    user = User.find_by(email: email, password: password)
    render plain: user.present?
  end

  def show
    id = params[:id]
    user = User.find(id)
    render plain: user.to_pleasant_string
  end

  def create
    name_new = params[:name]
    email_new = params[:email]
    password_new = params[:password]
    new_user = User.create!(
      name: name_new,
      email: email_new,
      password: password_new,
    )
    response_text = "Hey ,your new user is created with the Name: #{new_user.name}"
    render plain: response_text
  end
end
