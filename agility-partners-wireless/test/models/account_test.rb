require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  test "should not save without name" do
    account = Account.new
    assert_not account.save
  end

  test "should find name by fragment" do
    account = Account.new(name: 'John Doe')
    account.save
    search_results = Account.name_search('oh')
    assert_includes(search_results, account)
  end
end
