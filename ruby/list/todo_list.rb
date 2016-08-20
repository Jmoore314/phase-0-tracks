class TodoList

	attr_reader :get_items

	def initialize(task1)
		@get_items = task1
	end

	def add_item(item)
		@get_items << item
	end

	def delete_item(item)
		@get_items.delete(item)
	end

	def get_item(index)
		@get_items[index]
	end
end