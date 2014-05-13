class Todo < ActiveRecord::Base
  validates :description, presence: true
  
  def self.days_left_until_deletion
    
    Time.created_at
        
  end
  
  private
  
  def days_ago_in_words(from_date, to_date, options={})
    delta = (to_date - from_date).to_i
    I18n.with_options :locale => options[:locale], :scope => :'datetime.distance_in_words' do |locale|
      locale.t :x_days, :count => delta
    end
  end
end
