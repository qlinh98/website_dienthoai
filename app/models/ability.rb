# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(admin_user)
    # admin_user ||= AdminUser.new
    if admin_user.admin?
      can :read, ActiveAdmin::Page, name: "Dashboard", namespace_name: "admin"
      can :manage, AdminUser
      cannot :destroy, AdminUser, id: admin_user.id
    elsif admin_user.manager?
      can :manage, ActiveAdmin::Page, name: "Dashboard", namespace_name: "admin"
      can :update, AdminUser, id: admin_user.id
      can :manage, Product
      can :manage, CategoryPro
      can :read, User
      can :manage, ProductDetail
      can :read, Poll
      can :read, Order
      can :read, LineItem
      can :read, Cart
    end
  end

  # def initialize(user)
  #   user ||= AdminUser.new
  #   # can :manage, Post
  #   can :read, Product
  #   can :manage, User, id: user.id
  #   can :read, ActiveAdmin::Page, name: "Dashboard", namespace_name: "admin"

  # Define abilities for the passed in user here. For example:
  #
  # user ||= AdminUser.new # guest user (not logged in)
  # if user.has_role? :admin
  #   can :manage, :all
  # else
  #   # can :read, Product
  #   # can :read, :all
  #   # can :mange, :all if user.has_role? :manager
  # end
  #
  # The first argument to `can` is the action you are giving the user
  # permission to do.
  # If you pass :manage it will apply to every action. Other common actions
  # here are :read, :create, :update and :destroy.
  #
  # The second argument is the resource the user can perform the action on.
  # If you pass :all it will apply to every resource. Otherwise pass a Ruby
  # class of the resource.
  #
  # The third argument is an optional hash of conditions to further filter the
  # objects.
  # For example, here the user can only update published articles.
  #
  #   can :update, Article, :published => true
  #
  # See the wiki for details:
  # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  # end
end
