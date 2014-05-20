class ActionableTask
  def initialize
    @completed_at = nil
  end

  def completed?
    !@completed_at.nil?
  end

  def complete
    @completed_at = Time.now.utc
  end

  def completed_at
    @completed_at
  end
end
