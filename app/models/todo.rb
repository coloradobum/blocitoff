#require 'actionable_task'

class Todo < ActiveRecord::Base
  validates :description, presence: true

  def completed?
    !@completed_at.nil?
  end

  def complete
    @completed_at = Time.now.utc
    self.update_attribute(:completed_at, @completed_at)
  end

  def completed_at
    @completed_at
  end

  def days_left_until_deletion
    (self.created_at + 7.days).to_i
  end

private

  def create_actionable_item_for_todo
    @actionable_item = ActionableItem.new
  end
end
