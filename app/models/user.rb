require "active_record"
class User < ActiveRecord::Base

    
    def to_pleasant_string
        "#{name}. #{email}- #{password} "
    end

    def authenticate(email, password)
        user=find_by_email("mail@example.com")
        if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
          user
        else
          nil
        end
    end
      
    
end






  