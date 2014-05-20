module TodoHelper

  def todo_formatter delta

    # if delta.to_i < 1
    #   return 'expired'
    # else
    #   return distance_of_time_in_words(todo.days_left_until_deletion)
    # end

    delta
  end
end
