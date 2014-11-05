class Role < ActiveRecord::Base
  #attr_accessible :name

  has_and_belongs_to_many :users, :join_table => "user_roles"

  belongs_to :resource, :polymorphic => true
  
  #--
  # Relationship
  has_many :user_roles, :dependent => :destroy
  has_many :users, :through => :user_roles
  
end
