class TodosController < ApplicationController

  def index
    @todos = Todo.all
    @days_left = days_left_until_deletion
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to @todo, notice: 'Your new TODO was saved'
    else
      redirect_to @todo, notice: 'Please enter a description'
    end
end

  def show
    @todo = Todo.find(params[:id])
    @todo2 = @todo.description
  end

  private

  def todo_params
    params.require(:todo).permit(:description)
  end
end
