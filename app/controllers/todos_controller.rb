class TodosController < ApplicationController
  # GET /todos or /todos.json
  def index
    @todos = Todo.all
    @todo = Todo.new
  end

  # POST /todos or /todos.json
  def create
    @todo = Todo.new(todo_params)
    @todos = Todo.all

    respond_to do |format|
      if @todo.save
        format.html { redirect_to todos_url, notice: "Todo was successfully created." }
        format.json { render :show, status: :created, location: @todo }
      else
        format.html { render :index, status: :unprocessable_entity }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def todo_params
      params.require(:todo).permit(:todo)
    end
end
