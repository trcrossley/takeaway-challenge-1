class Order

  attr_reader :dishes, :menu

  def initialize(menu)
    @dishes = {}
    @menu = menu
  end

  def add(item, qty)
    fail NoItemError, "#{item} is not on the menu" unless menu.available?(item)
    dishes[item] = qty
  end
end

class NoItemError < StandardError; end
