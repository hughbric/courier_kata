require 'order'

describe Order do
  describe '#add' do
    it 'a package can be added to an order' do
      package = Package.new(9)
      expect(subject.add(package)).to eq([package])
    end

    it 'two packages can be added to an order' do
      small_package = Package.new(5)
      another_small_package = Package.new(8)
      subject.add(small_package)
      expect(subject.add(another_small_package)).to eq([small_package, another_small_package])
    end

    it 'throws an error when an interger is input' do
      expect{ subject.add(20) }.to raise_error(ArgumentError, 'Please input a package')
    end
  end

  describe '#print_order' do
    it 'prints out an order with items and total cost' do
      xl_package = Package.new(120)
      subject.add(xl_package)
      expect(subject.print_order).to eq({ items: [xl_package], total_cost: '$25' })
    end

    it 'has speedy delivery' do
      xl_package = Package.new(120)
      subject.add(xl_package)
      subject.speedy_shipping = true
      expect(subject.print_order).to eq({ items: [xl_package], speedy_shipping: '$25', total_cost: '$50' })
    end
  end
end
