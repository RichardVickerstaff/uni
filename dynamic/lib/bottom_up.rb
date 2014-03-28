require 'debugger'

class BottomUp
  PRICES = [0,1,5,8,9,10,17,17,20,24,30]

  #def cut length
    #rev , splits = calc length
    #puts splits
    #while length > 0 do
      #puts splits [length]
      #length = length - splits[length]
    #end
    #rev
  #end

  def cut length
    rev , splits = calc length
    price = -1
    (1..length).each { |j|
      (1..j).each { |i|
        price = [price, (PRICES[i] + rev[j-i])].max
      }
      rev[j] = price
    }
    puts "#{length} - #{splits}"
    puts "#{rev}"
    rev[length]
  end

  def calc length
    rev = Array(0..length)
    splits = Array(0..length)

    return 0 if length == 0

    price = -1
    (1..length).each { |j|
      (1..j).each { |i|
        if price < (PRICES[i] + rev[j-i])
          price = (PRICES[i])
          splits[j] = i
        end
      }
      rev[j] = price
    }
    [rev, splits]
  end
end
