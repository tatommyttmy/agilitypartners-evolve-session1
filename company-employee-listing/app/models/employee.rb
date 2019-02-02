class Employee < ApplicationRecord
    belongs_to :company
    scope :search_match, -> (search) { where("name like ?", "#{search}%")}
end
