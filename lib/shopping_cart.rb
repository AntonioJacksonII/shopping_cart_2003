class ShoppingCart

  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def total_number_of_products
    total_products = 0
     @products.each do |product|
       total_products += product.quantity
     end
     total_products
  end

  def is_full?
    total_number_of_products > @capacity
  end

  def products_by_category(category)
    @products.select do |product|
      product.category == category
    end
  end

  def details
  {:name => @name, :capacity => @capacity}
  end

  def percentage_occupied
    ((total_number_of_products.to_f / @capacity) * 100).round(2)
  end

  def sorted_products_by_quantity
    @products.sort_by(&:quantity).reverse
  end

  def product_breakdown
    @products.sort_by(&:category)
  end
end
