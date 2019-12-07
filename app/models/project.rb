class Project < ApplicationRecord
  # belongs_to :user

  # def to_param
  #   title
  # end

  def previous
    Project.where("id < ?", id).last
  end

  def next
    Project.where("id > ?", id).first
  end
end
