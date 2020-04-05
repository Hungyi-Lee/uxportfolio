class Sideproject < ApplicationRecord
  def previous
    Sideproject.where("id < ?", id).last
  end

  def next
    Sideproject.where("id > ?", id).first
  end
end
