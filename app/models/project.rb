class Project < ApplicationRecord
  belongs_to :user

  def to_param
    title
  end
end
