class Package
  attr_reader :package_type, :unit_price

  def initialize(package_dimension)
    @package_dimension = package_dimension
    set_package_attributes
  end

  private

  def set_package_attributes
    if @package_dimension < 10
      @package_type = 'Small'
      @unit_price = 3
    elsif @package_dimension < 50
      @package_type = 'Medium'
      @unit_price = 8
    elsif @package_dimension < 100
      @package_type = 'Large'
      @unit_price = 15
    elsif @package_dimension >= 100
      @package_type = 'XL'
      @unit_price = 25
    end
  end
end
