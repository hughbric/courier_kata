class Order
  attr_writer :speedy_shipping

  def initialize
    @order = { items: [], total_cost: '$0' }
  end

  def add(package_dimension)
    raise ArgumentError, 'Incorrect input type' unless package_dimension.is_a? Integer

    package = Package.new(package_dimension)
    @order[:items] << package.details
  end

  def print_order
    calculate_total_cost
    @order
  end

  private

  def calculate_total_cost
    total = 0
    @order[:items].each do |package|
      price = package[:individual_cost]
      price[0] = '' # removes '$'
      total += price.to_i
      package[:individual_cost] = "$#{price}"
    end

    shipping_costs(total)
  end

  def shipping_costs(total)
    if @speedy_shipping == true
      double_total = total * 2
      @order[:speedy_shipping] = "$#{total}"
      @order[:total_cost] = "$#{double_total}"
    else
      @order[:total_cost] = "$#{total}"
    end
  end
end
