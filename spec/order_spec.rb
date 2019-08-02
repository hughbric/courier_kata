require 'order'

describe Order do
  describe '#print_order' do
    it 'a small package can be added and order printed' do
      subject.add(9)
      expect(subject.print_order).to eq({ items: [{ item: 9, package_type: 'Small', individual_cost: '$3' }], total_cost: '$3' })
    end
  end
end
