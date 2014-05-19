class TodosController < ApplicationController

  def index
    @todos = Todo.all
    @days_left_until_deletion = Todo.days_left_until_deletion
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to todos_path , notice: 'Your new TODO was saved'
    else
      redirect_to todos_path , notice: 'Please enter a description'
    end
end

  def show
    @todo = Todo.find(params[:id])
    @todo2 = @todo.description
  end

  private

  def todo_params
    params.require(:todo).permit(:description, :days_left)
  end
end