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

end
