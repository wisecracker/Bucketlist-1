require 'test_helper'

class TodoItemTest < ActiveSupport::TestCase
context "A location TodoItem" do 
		setup do 
			@destination = Destination.create("Scotland")
			@todo_item =  TodoItem.create(:name => "Go to St. Andrews", :location => "St. Andrews Links",
			 :destination => @destination)
		end
		should "put in longitude and latitude" do 
			assert_not_nil @todo_item.latitude
			assert_not_nil @todo_item.longitude
		end

		should "use a better input for geociding" do 
			assert_equal "[address]", @todo_item.coding_method
	end
end
