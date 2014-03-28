require 'debugger'

class Recursive
  PRICES = [0,1,5,8,9,10,17,17,20,24,30]

  def cut length
    return 0 if length == 0
    price = -1
    (1..length).each { |i|
      price = [price, (PRICES[i] + cut(length - i))].max
    }
    price
  end
end
