class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map { |item| item[:name]}.sort
  end

  def cheap
    
    def cheap?(price)
        price < 30
    end

    @items.select { |item| cheap?(item[:price]) }
  end

  def out_of_stock
    @items.select { |item| item[:quantity_by_size].empty? }
  end

  def stock_for_item(name)
    @items.find { |item| name == item[:name] }[:quantity_by_size]
  end

  def total_stock
    @items.sum do |item|
        item[:quantity_by_size].sum { |_, val| val }
    end
  end

  private
  attr_reader :items
end
