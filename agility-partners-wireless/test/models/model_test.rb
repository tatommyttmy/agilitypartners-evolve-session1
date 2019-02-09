require 'test_helper'

class ModelTest < ActiveSupport::TestCase
  test "invalid without name" do
    model = Model.new
    assert model.invalid?
  end

  test "cannot have negative quantity_on_hand" do
    model = Model.new(name: 'Phone', quantity_on_hand: -1)
    assert model.invalid?
  end

  test "name must be unique" do
    model = Model.new(name: 'Phone', quantity_on_hand: 2)
    model.save
    other_model = Model.new(name: 'Phone', quantity_on_hand: 2)
    assert_not other_model.save
  end
end
