require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'Ismail', email: "ismail@memail.com")
    @user.save
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

  test "name is too long" do
    @user.name = "s"*50
    assert_not @user.valid?
  end

  test "email address is not valid" do
    @user.email = "xd"
    assert_not @user.valid?
  end

  test "email address is too long" do
      @user.email = "xd"*300
      assert_not @user.valid?
  end

  test "email addresse should be unique" do
    duplicate_user = User.new(name:"test", email: @user.email)
    assert_not duplicate_user.valid?
  end
end
