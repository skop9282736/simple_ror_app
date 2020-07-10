require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'Ismail', email: "ismail@memail.com")
  end

  test "sould be valid" do
    assert @user.valid?
  end

  test "should have a name" do
    @user.name = ""
    assert_not @user.valid?
  end

  test "should have an email" do
    @user.email = ""
    assert_not @user.valid?
  end
end
