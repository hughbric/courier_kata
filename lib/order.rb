class Order
  def initialize
    @package = {}
    @order = { items: [], total_cost: '$0' }
  end

  def add(package_dimension)
    @package[:item] = package_dimension
    calculate_package_type(package_dimension)
    set_unit_price(@package[:package_type])
    calculate_total_cost

    @order[:items] << @package
  end

  def print_order
    @order
  end

  private

  def calculate_package_type(package_dimension)
    if package_dimension < 10
      @package[:package_type] = 'Small'
    end
  end

  def set_unit_price(package_type)
    if package_type == 'Small'
      @package[:individual_cost] = '$3'
    end
  end

  def calculate_total_cost
    @order[:total_cost] = @package[:individual_cost]
  end
end
