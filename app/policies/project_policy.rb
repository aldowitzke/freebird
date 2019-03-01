class ProjectPolicy < ApplicationPolicy
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
    record.artist == user || user.admin == true
  end

  def destroy?
    # if user created, returns true, authorize
    record.artist == user || user.admin == true
  end

  def search?
    @result = true
  end
end
