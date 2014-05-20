require 'actionable_task'

class Todo < ActiveRecord::Base
  validates :description, presence: true

  def completed?
    !@completed_at.nil?
  end

  def complete
    @completed_at = Time.now.utc
  end

  def completed_at
    @completed_at
  end


private

  def create_actionable_item_for_todo
    @actionable_item = ActionableItem.new
  end

  def days_ago_in_words(from_date, to_date, options={})
    delta = (to_date - from_date).to_i
    I18n.with_options :locale => options[:locale], :scope => :'datetime.distance_in_words' do |locale|
      locale.t :x_days, :count => delta
    end
  end

end
