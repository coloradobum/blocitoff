class TodosController < ApplicationController

  def index
    @todos = Todo.active.where(:complete => false)
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to todos_path, notice: 'Your TODO was saved.'
    else
      redirect_to todos_path, notice: 'Please enter a description.'
    end
  end

  def update
    respond_to do |wants|
      wants.js {
        @todo = Todo.find(params[:id])
        @todo.update_attributes(todo_params)
        @todo.complete!
        head :ok, :content_type => 'application/js'
      }
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:description)
  end
end
