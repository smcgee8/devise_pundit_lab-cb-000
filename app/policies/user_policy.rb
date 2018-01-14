class UserPolicy < ApplicationPolicy

  def show?
    user.admin? || user.moderator? || record == user
  end

end
