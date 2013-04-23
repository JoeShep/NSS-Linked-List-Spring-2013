class LinkedListItem
  attr_reader :next_list_item
  attr_reader :payload

  def initialize( whatever )
  	@payload=whatever
  end

  def next_list_item= (linked_list_item)
  	raise ArgumentError unless linked_list_item != self
  	@next_list_item=linked_list_item
  end

  def last?
  	@next_list_item.nil?
  end
end
