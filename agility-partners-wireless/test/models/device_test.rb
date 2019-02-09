require 'test_helper'

class DeviceTest < ActiveSupport::TestCase
  test "invalid without phone_number" do
    device = Device.new
    assert device.invalid?
  end

  test "phone_number must be exactly 10 digits" do
    device = Device.new(phone_number: 'abc123')
    assert device.invalid?
  end

  test "phone_number must be unique" do
    device = Device.new(phone_number: '6145555555')
    device.save
    other_device = Device.new(phone_number: device.phone_number)
    assert_not other_device.save
  end
end
