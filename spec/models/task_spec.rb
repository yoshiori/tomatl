require 'spec_helper'

describe Task do

  describe "#finish" do
    subject { task }

    context "new task" do
      let(:task){ Task.new }

      before { task.finish }

      it { should be_finish }
    end
  end

end
