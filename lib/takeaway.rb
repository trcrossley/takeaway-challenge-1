require_relative 'menu'
require_relative 'order'

class Takeaway

  attr_reader :menu, :order

  def initialize(menu:, order: nil)
    @menu = menu
    @order = order || Order.new
  end

  def print_menu
    menu.print
  end

  def place_order(dishes)
    dishes.each do |item, qty|
      order.add(item, qty)
    end
  end
  private



end
