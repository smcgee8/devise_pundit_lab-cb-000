class UserPolicy < ApplicationPolicy

  def show?
    raise "hereeeee".inspect
    user.admin? || user.moderator? || record == user
  end

end
