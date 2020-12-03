class User < ActiveRecord::Base
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :email, presence: true
    #authenticate
    #validate that we have a password
    #validate that password and password_confirmation match if we have password_confirmation in our params
    #password recovery
    #passord =

    # def password=(string)
    #     self.password_digest = hashing_algorithm(string + randomly generated salt)
    # end
    
end