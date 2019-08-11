require 'order'

describe Order do
  describe '#print_order' do
    it 'a small package can be added and order printed' do
      package = Package.new(9)
      subject.add(package)
      expect(subject.print_order).to eq({ items: [package], total_cost: '$3' })
    end

    it 'two small packages can be added to an order' do
      small_package = Package.new(5)
      another_small_package = Package.new(8)
      subject.add(small_package)
      subject.add(another_small_package)
      expect(subject.print_order).to eq({ items: [small_package, another_small_package], total_cost: '$6' })
    end

    it 'adds a medium package' do
      medium_package = Package.new(30)
      subject.add(medium_package)
      expect(subject.print_order).to eq({ items: [medium_package], total_cost: '$8' })
    end

    it 'adds small and medium package' do
      small_package = Package.new(9)
      medium_package = Package.new(30)
      subject.add(small_package)
      subject.add(medium_package)
      expect(subject.print_order).to eq({ items: [small_package, medium_package], total_cost: '$11' })
    end

    it 'adds large package' do
      large_package = Package.new(80)
      subject.add(large_package)
      expect(subject.print_order).to eq({ items: [large_package], total_cost: '$15' })
    end

    it 'adds XL package' do
      xl_package = Package.new(120)
      subject.add(xl_package)
      expect(subject.print_order).to eq({ items: [xl_package], total_cost: '$25' })
    end

    it 'throws an error when an interger is input' do
      expect{ subject.add(20) }.to raise_error(ArgumentError, 'Please input a package')
    end

    it 'has speedy delivery' do
      xl_package = Package.new(120)
      subject.add(xl_package)
      subject.speedy_shipping = true
      expect(subject.print_order).to eq({ items: [xl_package], speedy_shipping: '$25', total_cost: '$50' })
    end
  end
end
