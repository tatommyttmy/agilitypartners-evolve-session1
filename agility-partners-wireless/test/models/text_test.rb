require 'test_helper'

class TextTest < ActiveSupport::TestCase
  test "must include message" do
    text = Text.new
    assert text.invalid?
  end

  test "message cannot be longer than 255 characters" do
    text = Text.new(message: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis,.')
    assert text.invalid?
  end
end
