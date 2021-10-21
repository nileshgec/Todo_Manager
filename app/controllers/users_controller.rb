# todos_controller.rb
class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  


    def index
      render plain: User.all.to_a
    end

    def login
      user = User.find_by(email: params[:email])
      #response_text= "Hey ,your new user is created with the Name: "
      if user.present? 
        #&& user.authenticate(params[:password])
        #session[:user_id] = user.id
        response_text= "True"
        render plain: response_text
      else
        response_text= "False"
        render plain: response_text
      end
    end


    def show
        id = params[:id]
        user = User.find(id)
        render plain: user.to_pleasant_string
        
        #render plain: users.to_pleasant_string
    end

    def create
        name_new=params[:name]
        email_new=params[:email]
        password_new=params[:password]

        new_user=User.create!(
          name:name_new,
          email:email_new,
          password:password_new,
        )
        response_text= "Hey ,your new user is created with the Name: #{new_user.name}"
        render plain: response_text
    end

    

   
    


   
end

