require 'spec_helper'

describe User do

  let(:user) { FactoryGirl.create(:user) }

  describe "FactoryGirl save test" do

    describe "#save" do
        subject { user }

        before { user.save }

        it { should be_persisted }
    end

    describe "#tasks" do
      subject { user.tasks }

      it { should have(3).tasks }
    end
  end

  describe "#pomodoros" do
    it "When get all pomodoros" do
      user = FactoryGirl.create(:user)
      user.should have(4).pomodoros
    end
  end
end
