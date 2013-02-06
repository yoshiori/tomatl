require 'spec_helper'

describe Task do

  describe "#finish" do
    subject { task }
    before { task.finish }

    context "new task" do
      let(:task) { FactoryGirl.build(:task) }

      it { should be_finish }
    end

    context "finished task" do
      let(:task) { FactoryGirl.create(:task, finished_at: Time.now) }

      it { should be_finish }
    end

    context "finished task" do
      let(:task) { FactoryGirl.create(:task, finished_at: Time.now) }

      it { should be_finish }
    end
  end

  describe "scope" do
    let(:user) { FactoryGirl.create(:user) }

    describe "#active" do
      subject { user.tasks.active }

      it { should have(2).tasks }
    end

    describe "#finished" do
      subject { user.tasks.finished }

      it { should have(1).tasks }
    end

    describe "#week" do
      subject { user.tasks.this_week }

      it { should have(3).tasks }
    end
  end
end
