class Ability
  include CanCan::Ability
 
  def initialize(user)
    user ||= User.new # guest user
 
    if user.has_role? :superadmin
      can :manage, :all
    elsif user.has_role? :admin
      can :manage, [Activity, ActivityType]
    else
      can :read, :all  
    end
  end
end
