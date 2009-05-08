
require 'test_helper'

class TwitterControllerTest < ActionController::TestCase
  # Replace this with your real tests.
context ":index" do
  context "with a non authorized user" do
      setup do
        login_as(false)
        get :index
      end
      should_respond_with :redirect
      should_redirect_to '"login"'
  end

  context "with an authorized user" do
      setup do
          @user = Factory(:twitter_oauth_user)
          login_as(@user)
          get :index
      end

      should_assign_to :tweets

      should "have tweets" do
        assert_not_nil :tweets
      end

      should_respond_with :success

      should "render the a list or tweets" do
        assert_select "li",/message/
      end

    end


end

end

