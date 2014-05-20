require 'spec_helper'

describe Todo do

   describe "#complete" do
     subject { Todo.new }

     it "must support a complete message" do
       subject.should respond_to :complete
     end

     it "must make #completed? return true" do
       subject.complete
       subject.completed?.should == true
     end
   end

   describe "#completed_at" do
     subject { Todo.new }

     it "must return the completed_at timestamp" do
       subject.complete
       subject.should respond_to :completed_at
     end
   end
 end
