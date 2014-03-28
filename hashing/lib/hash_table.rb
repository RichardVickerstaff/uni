require 'debugger'

class HashTable
  attr_reader :array

  def initialize
    @m = 701
    @m_prime = (@m - 1)
    @array = []
  end


  def hash k, i
    ((k % @m) + i*(1 + (k % @m_prime)))
  end

  def insert k
    @set = false
    index = 0
    while index != @m
      res = hash k, index
      if @array[res] == nil
        @array[res] = k
        @set = true
      else
        index += 1
      end
      return res if @set == true
    end
  end

  def search k
    i = 0
    while i != @m
      j = hash k, i
      return j if @array[j] == k
      i += 1
    end
  end

end
