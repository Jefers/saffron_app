class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest customer (not logged in)

    if user.admin?
      can :manage, :all
    else
      # can [:update, :destroy], [Article, Comment]
      can [:create], [Enquiry]
    end

  end
end
