class Device < ApplicationRecord
    belongs_to :account
    belongs_to :model

    has_many :outgoing_calls, :class_name => "Call", :foreign_key => :from_device_id
    has_many :incoming_calls, :class_name => "Call", :foreign_key => :to_device_id
    has_many :outgoing_texts, :class_name => "Text", :foreign_key => :from_device_id
    has_many :incoming_texts, :class_name => "Text", :foreign_key => :to_device_id

    validates :phone_number, presence: true
    validates :phone_number, uniqueness: true
    validates :phone_number, format: { with: /\A\d{10}\z/, message: "must be exactly 10 digits" }
    validates :account, presence: true
    validates :model, presence: true
end
