require 'package'

describe Package do
  it 'a small package can be created' do
    package = Package.new(9)
    expect(package.package_type).to eq('Small')
    expect(package.unit_price).to eq(3)
  end

  it 'a medium package can be created' do
    package = Package.new(30)
    expect(package.package_type).to eq('Medium')
    expect(package.unit_price).to eq(8)
  end

  it 'a large package can be created' do
    package = Package.new(50)
    expect(package.package_type).to eq('Large')
    expect(package.unit_price).to eq(15)
  end

  it 'an XL package can be created' do
    package = Package.new(120)
    expect(package.package_type).to eq('XL')
    expect(package.unit_price).to eq(25)
  end
end
