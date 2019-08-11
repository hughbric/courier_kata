require_relative 'package'

class Order
  attr_writer :speedy_shipping

  def initialize
    @order = { items: [], total_cost: 0 }
  end

  def add(package)
    raise ArgumentError, 'Please input a package' unless package.is_a? Package

    @order[:items] << package
  end

  def print_order
    calculate_total_cost
    @order
  end

  private

  def calculate_total_cost
    total = 0
    @order[:items].each do |package|
      total += package.unit_price
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
