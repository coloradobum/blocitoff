class TodosController < ApplicationController

  before_filter :authenticate_user!

  def index
    @todos = Todo.active.where(:complete => false)
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    respond_to do |format|
      format.html {
        if @todo.save
           redirect_to todos_path, notice: 'Your TODO was saved.'
        else
          redirect_to todos_path, notice: 'Please enter a description.'
        end
      }
      format.js
    end

  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update_attributes!(todo_params)
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:description, :complete)
  end
end
