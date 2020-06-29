class Sideproject < ApplicationRecord
  # def previous
  #   Sideproject.where("id < ?", id).last
  # end
  #
  # def next
  #   Sideproject.where("id > ?", id).first
  # end

  scope :get_all, ->(search) { where(Sideproject.arel_table[:title].matches("%#{search}%").or(Sideproject.arel_table[:description].matches("%#{search}%"))) }

end
