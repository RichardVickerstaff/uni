require 'debugger'

class Heap
  def initialize heap
    @heap = heap
    @heap.unshift(heap.length)
  end

  def parent i
    i/2
  end

  def left i
    i*2
  end

  def right i
    (i*2) + 1
  end

  def size
    @heap[0]
  end

  def max_i_l_r i
    l = left i
    r = right i

    if (l <= size && @heap[l] > @heap[i])
      return l
    else
      return i
    end
    if (r <= size && @heap[r] > @heap[i] )
      return r
    end
  end

  def max_heapify i
    if (max_i_l_r(i) != @heap[i])
      @heap.swap!(i, @heap.index(max_i_l_r(i)))
      max_heapify max_i_l_r(i)
    end
    @heap
  end

end

class Array
  def swap!(a,b)
    self[a], self[b] = self[b], self[a]
    self
  end
end
