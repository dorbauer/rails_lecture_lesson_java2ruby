class BinaryTree
  
  def initialize(number)
    @content = number
  end
  
  def insert(value)
    if value < @content
      if !@left
        @left = BinaryTree.new(value)
      else
        @left.insert(value)
      end
    else
      if !@right
        @right = BinaryTree.new(value)
      else
        @right.insert(value)
      end
    end  
  end
  
  def traverse()
      ret = ""

      ret << @left.traverse() if @left
      
      ret << "#{@content} " 
      
      ret << @right.traverse() if @right

      return ret
    end
  
  
end