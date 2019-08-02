require 'order'

describe Order do
  describe '#print_order' do
    it 'a small package can be added and order printed' do
      subject.add(9)
      expect(subject.print_order).to eq({ items: [{ item: 9, package_type: 'Small', individual_cost: '$3' }], total_cost: '$3' })
    end

    it 'two small packages can be added to an order' do
      subject.add(5)
      subject.add(8)
      expect(subject.print_order).to eq({ items: [{ item: 5, package_type: 'Small', individual_cost: '$3' }, { item: 8, package_type: 'Small', individual_cost: '$3' }], total_cost: '$6' })
    end

    it 'adds a medium package' do
      subject.add(30)
      expect(subject.print_order).to eq({ items: [{ item: 30, package_type: 'Medium', individual_cost: '$8' }], total_cost: '$8' })
    end

    it 'adds small and medium package' do
      subject.add(9)
      subject.add(30)
      expect(subject.print_order).to eq({ items: [{ item: 9, package_type: 'Small', individual_cost: '$3' }, { item: 30, package_type: 'Medium', individual_cost: '$8' }], total_cost: '$11' })
    end
  end
end
