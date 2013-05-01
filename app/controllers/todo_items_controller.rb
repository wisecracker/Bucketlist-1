class TodoItemsController < ApplicationController

	def index
		@items = TodoItem.all
		@destinations = Destination.all
		
	end

	def show
		@item = TodoItem.find(params[:id])
	end

	def create
		@item = TodoItem.new(params[:todo_item])
		@item.save!
		render @item
	end

	  def destroy
    @item = TodoItem.find(params[:id])
    @item.destroy
     respond_to do |format|
      format.html { redirect_to todo_items_url }
    
    end

    end

end
