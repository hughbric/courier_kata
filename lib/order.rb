class Order
  def initialize
    @order = { items: [], total_cost: '$0' }
  end

  def add(package_dimension)
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
      price[0] = '' #removes '$'
      total += price.to_i
      package[:individual_cost] = "$#{price}"
    end

    @order[:total_cost] = "$#{total}"
  end
end
