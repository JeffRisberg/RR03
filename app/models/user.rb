class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :user_roles, :dependent => :destroy
  has_many :roles, :through => :user_roles
  
  # does this user have the specified role in its role list?
  def has_role?(role_sym)
    roles.any? { |role| role.name.underscore.to_sym == role_sym.downcase }
  end
  
end
