require_relative("product")

class Cart
  @@cart = []


  def self.add(name, base_price, tax_rate = 1.15)
    new_product = Product.new(name, base_price, tax_rate)
    @@cart << new_product
    return new_product
  end
  def self.show
    @@cart
  end
  # def self.remove
  #   @@cart.delete(self)
  # end
  def self.total_cost
    sum = 0
    @@cart.each do |product|
      sum += product.base_price
    end
    return sum
  end
  def self.total_cost_plus_tax
    sum = 0
    @@cart.each do |product|
      sum += product.total_price
    end
    return sum
  end
end

item1 = Cart.add("mac", 1500, 1.15)
item2 = Cart.add("phone", 15, 1.15)
item3 = Cart.add("bread", 3.2, 1.0)

puts Cart.show.inspect

item2.remove

puts Cart.total_cost
puts Cart.total_cost_plus_tax
