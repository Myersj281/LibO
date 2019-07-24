
# class DivisionByZero
# end

struct Int
  # Auto create smallest int possible and create new int of minimal possible size to store the new value with the same identifier if neccessary.

  def <<(count)
    unsafe_shl(count)
  end

  def /(x : Int)
    if x == 0
      self#raise DivisionByZero.new
    end

    unsafe_div x
  end

  def %(other : Int)
    if other == 0
      self#raise DivisionByZero.new
    elsif (self ^ other) >= 0
      self.unsafe_mod(other)
    else
      me = self.unsafe_mod(other)
      me == 0 ? me : me + other
    end
  end

  def times
    x = 0
    while x < self
      yield x
      x += 1
    end
  end
end