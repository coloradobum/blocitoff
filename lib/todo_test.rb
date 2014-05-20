

require 'minitest/autorun'

describe Todo do
  describ "#complete" do
    subject { Todo.new }

    it "must support a complete message" do
      subject.must_respond_to :complete  
    end 

    it "must make #completed? return true" do
      subject.complete
      subject.completed?.must_equal true
    end  
  end

  describe "#completed_at" do
    subject { Todo.new }

    it "must return the completed_at timestamp" do
      subject.complete
      subject.must_respond_to :completed_at
    end
  end
end
