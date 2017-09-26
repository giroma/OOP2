class Product
  def initialize(name, base_price, tax_rate)
    @name = name
    @base_price = base_price
    @tax_rate = tax_rate
  end

            # READERS
  def base_price
    @base_price
  end

             # WRITERS
  def total_price
    @total_price = @base_price * @tax_rate
  end

end
