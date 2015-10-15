require '../rails_helper'

describe do
  it "should validate the presence of a task" do
    task_name = Task.new({:name => ""})
    expect(task_name.save).to eq false
  end
end
