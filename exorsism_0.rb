class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    res = @items.map {|x| x[:name]}
    res.sort
  end

  def cheap
    @items.select {|x| x[:price] < 30}
  end

  def out_of_stock
    @items.select {|x| x[:quantity_by_size].empty?} 
  end

  def stock_for_item(name)
    item = @items.select {|x| x[:name] == name}
    item[0][:quantity_by_size]
  end

  def total_stock
    
    
    @items.inject(0) { |total, x| total += x[:quantity_by_size].inject(0) { |sum, (k, y)|  sum += y}}
    
  end

  private
  attr_reader :items
end

shoes = { price: 30.00, name: "Shoes", quantity_by_size: { s: 1, xl: 4 } }
coat = { price: 65.00, name: "Coat", quantity_by_size: {} }
handkerchief = { price: 19.99, name: "Handkerchief", quantity_by_size: {} }
items = [shoes, coat, handkerchief]
puts BoutiqueInventory.new(items).total_stock