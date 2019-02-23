

class String
  def size
    @length
  end

  def bytes
    pointerof(@c)
  end

  def each_byte
    size.times do |i|
      yield pointerof(i), i
    end
  end

  def ==(other : String | Int | Pointer)
    
  end

  def ===(other : String)

  end

end
