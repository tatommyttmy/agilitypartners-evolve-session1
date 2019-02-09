class Model < ApplicationRecord
    has_many :devices
    has_many :accounts, through: :devices

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :quantity_on_hand, numericality: { greater_than_or_equal_to: 0 }
end
