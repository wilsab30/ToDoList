class TodosController < ApplicationController
  def index
    @mytodos = TodoItem.all
  end

  def show
    @mytodo = TodoItem.first
  end

  def new
    @mytodo = TodoItem.new
  end

  def create
    s1 = TodoItem.new
    s1.title = params[:todo_item][:title]
    s1.description = params[:todo_item][:description]
    s1.finished = params[:todo_item][:finished]
    s1.due_date = params[:todo_item][:due_date]
    s1.save
    redirect_to action: "index"
  end

  def edit
    @mytodo = TodoItem.find(params[:id].to_i)
  end
  def update
    @mytodo = TodoItem.find(params[:id].to_i)
    @mytodo[:title] = params[:todo_item]["title"]
    @mytodo[:description] = params[:todo_item]["description"]
    @mytodo[:finished] = params[:todo_item]["finished"]
    @mytodo[:due_date] = params[:todo_item]["due_date"]
    @mytodo.save
    if @mytodo.finished == true
      @mytodo.completed_at = DateTime.now
      @mytodo.save
  end
  redirect_to action: "index"
  end

  def toggle_completed
      @mytodo = TodoItem.find(params[:id].to_i)
      @mytodo.update(finished: !@mytodo.finished)
      redirect_to action: "index"
    end

  def destroy
    @mytodo = TodoItem.destroy(params[:id].to_i)
    redirect_to action: "index"
  end


end
