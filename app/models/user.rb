class User < ActiveRecord::Base

  devise :database_authenticatable, :confirmable, :lockable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable, :token_authenticatable

  attr_accessible :email, :password, :password_confirmation

end
