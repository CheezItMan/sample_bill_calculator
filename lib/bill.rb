# bill.rb

class Bill
  def initialize(list)
    @price_list = list
  end

  # def subtotal
  #   return @price_list.reduce(0, :+)
  # end

  def subtotal
    if @price_list.length == 0
      return "No Bill required"
    end

    total = 0
    @price_list.each do |item|
      total += item
    end
    return total
  end

  def tax
    return subtotal * 0.08
  end

  def total
    return subtotal + tax
  end





end
