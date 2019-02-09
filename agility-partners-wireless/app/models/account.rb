class Account < ApplicationRecord
    has_many :models, through: :devices

    validates :name, presence: true

    scope :name_search, -> (text) { where("name like ?", "%#{text}%")}
end
