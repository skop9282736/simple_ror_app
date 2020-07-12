require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  def setup
    @count = User.count
  end

  test 'invalid signup' do
    old_count = @count
    post users_path, params: {
      user: { name: "",
              email: "user@invalid",
              password:              "foo",
              password_confirmation: "bar" }}
      assert old_count == @count
      assert_template 'users/new'
  end

  test "valid signup" do
    post users_path, params: {
      user: { name: "ismailovic",
              email: "user@valid.com",
              password:              "password123",
              password_confirmation: "password123" }}
      old_count = User.count
      assert_not old_count == @count
      follow_redirect!
      assert_template 'users/show'
  end

end
