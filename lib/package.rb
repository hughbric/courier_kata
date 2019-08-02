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
    elsif package_dimension < 50
      @package[:package_type] = 'Medium'
    elsif package_dimension < 100
      @package[:package_type] = 'Large'
    elsif package_dimension >= 100
      @package[:package_type] = 'XL'
    end
  end

  def set_unit_price(package_type)
    case package_type 
    when 'Small'
      @package[:individual_cost] = '$3'
    when 'Medium'
      @package[:individual_cost] = '$8'
    when 'Large'
      @package[:individual_cost] = '$15'
    when 'XL'
      @package[:individual_cost] = '$25'
    end
  end
end
