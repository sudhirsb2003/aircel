class Ability
  include CanCan::Ability
  def initialize(user)

    if user.role_name == 'super_user'
      can :manage, :all

    elsif user.role_name == 'tab_user'
      can :manage, Servey
      can :read, Tab
    else
      can :redirect, Dashbaord
    end

  end
  end
