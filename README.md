# Courier Kata

A code library that calculates the cost of sending an order of parcels.

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
