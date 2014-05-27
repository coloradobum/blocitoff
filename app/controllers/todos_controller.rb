class TodosController < ApplicationController

  def index
    @todos = Todo.active
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
    @todo = Todo.find(params[:id])
    @todo.update_attributes!(params[:todo])
    redirect_to todos_path
  end

  def destroy
  end

  private

  def todo_params
    params.require(:todo).permit(:description, :complete)
  end
end
