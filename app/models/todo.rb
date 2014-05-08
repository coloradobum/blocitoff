class Todo < ActiveRecord::Base
  validates :description, presence: true
  
  def days_left_until_deletion
    self.created_at
  end
end
