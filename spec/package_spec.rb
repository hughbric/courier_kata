require 'package'

describe Package do
  it 'a small package can be created' do
    package = Package.new(9)
    expect(package.details).to eq({ item: 9, package_type: 'Small', individual_cost: '$3' })
  end
end
