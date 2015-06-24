class CarPolicy < ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    true
  end

  def show?
    if @user
      scope.where(:id => record.id).exists?
    else
     false
    end
   
  end

  def create?
    true unless @user.uid.empty?
  end

  def new?
    create?
  end

  def update?
    true
  end

  def edit?
    @record.user == @user
  end

  def destroy?
    false
  end

  def scope
    Pundit.policy_scope!(user, record.class)
  end
  class Scope < Scope

    def resolve
      scope
    end
  end
end
