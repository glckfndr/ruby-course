p "sssss"
require 'ostruct'
class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    @items = items.inject([]) { |ostr, x| ostr.append(OpenStruct.new(x)) }
  end

  def item_names
    @items.inject([]) { |names, x| names.append(x.name) }.sort
  end

  def total_stock
    items.sum { |item| item[:quantity_by_size].values.sum }
  end
end

inventory = BoutiqueInventory.new([
                                    { price: 65.00, name: 'Maxi Brown Dress',
                                      quantity_by_size: { s: 3, m: 7, l: 8, xl: 4 } },
                                    { price: 50.00, name: 'Red Short Skirt', quantity_by_size: {} },
                                    { price: 29.99, name: 'Black Short Skirt', quantity_by_size: { s: 1, xl: 4 } },
                                    { price: 20.00, name: 'Bamboo Socks Cats', quantity_by_size: { s: 7, m: 2 } }
                                  ])

puts inventory.items.first.name
# => "Maxi Brown Dress"

p inventory.items.first.price
# => 65

p inventory.items.size
# => 4
