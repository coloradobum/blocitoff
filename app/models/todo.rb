class Todo < ActiveRecord::Base
  validates :description, presence: true
  
  after_create :set_deletion_date
  
  def self.days_left_until_deletion
    
    #self.created_at
    #not sure why this is undefined method
    #because I am not storing days_left in db, maybe I don't need to
    #write a model method?  Just call the created_at value from the controller and do the math there???
    #self.created_at.day
    #puts 'hello'
  end
  
  private
  
  def days_ago_in_words(from_date, to_date, options={})
    delta = (to_date - from_date).to_i
    I18n.with_options :locale => options[:locale], :scope => :'datetime.distance_in_words' do |locale|
      locale.t :x_days, :count => delta
    end
  end
  
  def set_deletion_date
    seven_days = 604800
    deletion_date = (self.created_at + seven_days).strftime("%B %d")
    self.update_attribute :days_left, deletion_date
  end
end
