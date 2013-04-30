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

end
