class Package
  def initialize(package_dimension)
    @package_dimension = package_dimension
    @package = {}
  end

  def details
    @package[:item] = @package_dimension
    calculate_package_type(@package_dimension)
    set_unit_price(@package[:package_type])
    @package
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
end
