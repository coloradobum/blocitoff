require 'spec_helper'

describe Todo do
  it "is valid with description" do
    todo = Todo.new(description: 'Get wine and cheese')
    expect(todo).to be_valid
  end
  it "is invalid without a description" do
    todo = Todo.new
    expect(todo).to_not be_valid
  end
end
