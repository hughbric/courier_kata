# Courier Kata

A code library that calculates the cost of sending an order of parcels.

## How to use

- Clone this repository
- Navigate to the project root
- `irb -r ./lib/order.rb`
- An example of how to use the programme is below:
```
2.6.0 :001 > order = Order.new
 => #<Order:0x00007fb6d6218ad8 @order={:items=>[], :total_cost=>"$0"}> 
2.6.0 :002 > order.add(9)
 => [{:item=>9, :package_type=>"Small", :individual_cost=>"$3"}] 
2.6.0 :003 > order.add(80)
 => [{:item=>9, :package_type=>"Small", :individual_cost=>"$3"}, {:item=>80, :package_type=>"Large", :individual_cost=>"$15"}] 
2.6.0 :004 > order.speedy_shipping = true
 => true 
2.6.0 :005 > order.print_order
 => {:items=>[{:item=>9, :package_type=>"Small", :individual_cost=>"$3"}, {:item=>80, :package_type=>"Large", :individual_cost=>"$15"}], :total_cost=>"$36", :speedy_shipping=>"$18"} 
2.6.0 :006 > 
```

## Improvements and Additions

- I would of liked to gotten further in the kata that I did. I encountered a difficulty with my second test. The array of the order was not behaving in a cumulative manner. Whenever a package was added with the shovel operator it would overwrite the rest of the hash items. I probably should have separated package into its own class sooner - however, I only want to do that if it is absolutely necessary, I spent too much time looking for a simpler solution to pass the test.
- Calculate total cost is in need of refactoring. I think `price[0] = ''` should not remove the '$' from `package[:individual_cost]` - but it does. I need to reflect on this kind of equality relationship.
- I would also probably refactor the 'magic numbers' in the package class and assign them to constants.
- The tight dependency between the two classes should be avoided and refactored out by something like dependency injection.
- Testing some of package's functionaliy is done via order_spec - again as a result of the undesirable tight coupling.

## Input Table

Input (longest dimension): 9  
Output: { items: [{ item: 9, package_type: 'Small', individual_cost: '$3' }], total_cost: '$3' }

Input (longest dimension): 5  
Input (longest dimension): 8  
Output: { items: [{ item: 5, package_type: 'Small', individual_cost: '$3' }, { item: 8, package_type: 'Small', individual_cost: '$3' }], total_cost: '$6' }

Input (longest dimension): 30  
Output: { items: [{ item: 30, package_type: 'Medium', individual_cost: '$8' }], total_cost: '$8' }

Input (longest dimension): 9  
Input (longest dimension): 30  
Output: { items: [{ item: 9, package_type: 'Small', individual_cost: '$3' }, { item: 30, package_type: 'Medium', individual_cost: '$8' }], total_cost: '$11' }

Input (longest dimension): 80  
Output: { items: [{ item: 80, package_type: 'Large', individual_cost: '$15' }], total_cost: '$15' }

Input (longest dimension): 120  
Output: { items: [{ item: 120, package_type: 'XL', individual_cost: '$25' }], total_cost: '$25' }

Input (longest dimension): string  
Output: 'Incorrect input type'
