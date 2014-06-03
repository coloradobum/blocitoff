class Todo < ActiveRecord::Base
  belongs_to :user
  validates :description, presence:true

  scope :active, -> { where("created_at > ?", DateTime.now - 7.days) }
  scope :expired, -> { where("created_at < ? AND completed_at IS NULL", DateTime.now - 7.days) }
  scope :completed, -> { where("completed_at IS NOT NULL")}

  def completed=(val)
    self.completed_at = val ? DateTime.now.utc : nil
  end

  def completed?
    !completed_at.nil?
  end

  def complete!
    self.completed_at = DateTime.now.utc
    save
  end

end
