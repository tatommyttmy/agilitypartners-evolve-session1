class Text < ApplicationRecord
    belongs_to :sender, :class_name => "Device", :foreign_key => :from_device_id
    belongs_to :recipient, :class_name => "Device", :foreign_key => :to_device_id

    validates :message, presence: true
    validates :message, length: { maximum: 255 }
end
