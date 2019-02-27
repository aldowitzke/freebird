class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    create?
  end

  def create?
    true
  end

  def show?
    true
  end

  def edit?
    update?
  end

  def update?
    # if user created, returns true, authorize
    record.user == user
  end

  def destroy?
    # if user created, returns true, authorize
    record.user == user
  end

  def my_events?
    true
  end

  def my_events_user?
    true
  end
end
