class UserPolicy < ApplicationPolicy

  def show?
    user.admin? || user.moderator? || record == user
  end

  def index?
    user.admin?
  end

end
