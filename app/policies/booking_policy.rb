class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    false
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
    false
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

  def review_edit?
    true
  end

  def review_update?
    true
  end
end
