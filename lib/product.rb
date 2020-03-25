class Product

  attr_reader :category, :name, :unit_price, :quantity

  def initialize(category, name, unit_price, quantity)
    @category = category
    @name = name
    @unit_price = 3.70
    @quantity = quantity.to_i
  end

  def total_price
    @unit_price * @quantity
  end
end
