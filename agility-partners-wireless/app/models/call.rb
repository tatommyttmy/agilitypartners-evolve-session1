class Call < ApplicationRecord
    belongs_to :caller, :class_name => "Device", :foreign_key => :from_device_id
    belongs_to :receiver, :class_name => "Device", :foreign_key => :to_device_id
end
