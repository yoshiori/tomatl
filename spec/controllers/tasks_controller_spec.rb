require 'spec_helper'

describe TasksController do
  describe "#index" do
    subject { get :index }

    context "when user login" do
      let(:user) {
        user = mock
        user.stub(:id).and_return(1)
        user
      }

      before do
        controller.stub(:current_user) {user}
      end

      it { should be_success }
      it { render_template("index") }
    end

    context "when user not login" do
      it { should redirect_to root_path }
    end
  end
end
