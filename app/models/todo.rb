class Todo < ActiveRecord::Base
  validates :description, presence:true

  scope :active, -> { where("created_at > ?", DateTime.now - 7.days) }
  scope :expired, -> { where("created_at < ?", DateTime.now - 7.days) }

end
