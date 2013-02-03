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
  end

  describe "#active" do

  end
end
