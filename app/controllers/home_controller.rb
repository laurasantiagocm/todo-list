class HomeController < ApplicationController
  def index
    @pending_todos = Todo.where(completed: false)
  end
end
