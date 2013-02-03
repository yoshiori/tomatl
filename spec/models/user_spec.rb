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

  describe "scope" do
    describe "#active" do
      subject { user.tasks.active }

      it { should have(2).tasks }
    end

    describe "#finished" do
      subject { user.tasks.finished }

      it { should have(1).tasks }
    end
  end
end
