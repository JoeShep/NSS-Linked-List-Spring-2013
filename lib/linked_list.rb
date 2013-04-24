require 'linked_list_item'

class LinkedList
  attr_reader :first_item

  def initialize *args
  end

  def add_item(payload)
    next_item = LinkedListItem.new(payload)
    if @first_item.nil?
      @first_item = next_item
    else
      final_item = @first_item
    until final_item.last?
        final_item = final_item.next_list_item
    end
      final_item.next_list_item = next_item
    end
  end

  def get(n)
      i=0
      next_item= @first_item
        if next_item.nil?
        raise IndexError
      else
        while i < n
        next_item= next_item.next_list_item
        i+=1
     end
    end
   next_item.payload
  end

  def last
      item=@first_item
      return nil if item.nil?
      until item.last?
      item=item.next_list_item
    end
    item.payload
  end

  def size
    item=@first_item
    size=0
    until item.nil?
    item=item.next_list_item
    size += 1
   end
    size
  end

  def to_s
    current_item=@first_item
    payloads = ""
   while current_item
     payloads += " "
     payloads += current_item.payload
     payloads += "," unless current_item.last?
     current_item = current_item.next_list_item
   end
    "|#{payloads} |"
  end

  def indexOf(string)
    return nil if @first_item.nil?
    current_item=@first_item
    count=0
    until string==current_item.payload
      current_item=current_item.next_list_item
      count +=1
      return nil if current_item.nil?
    end
    count
  end
  # ========= Bonus ========== #

  def [](payload)
  end

  def []=(n, payload)
  end

  def remove(n)
  end

end
