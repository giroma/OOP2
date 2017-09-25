require_relative("product")

class Cart
  @@cart = []


  def self.add(name, base_price, tax_rate = 1.15)
    new_product = new.Product(name, base_price, tax_rate)
    @@cart << new_product
    return new_product
  end
  def remove
    @@cart.delete(self)
  end
  def total_cost
    sum = 0
    @@cart.each do |product|
      sum += product.base_price
    end
    return sum
  end
  def total_cost_plus_tax
    sum = 0
    @@cart.each do |product|
      sum += product.total_price
    end
    return sum
  end
end

item1 = Cart.add("phone", 15, 1.15)
puts item1
