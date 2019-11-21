class VehiculePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def new?
    create?
  end

  def update?
    true
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  def update?
  record.user == user
  # - record: the vehicule passed to the `authorize` method in controller
  # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
  record.user == user
  end
end
