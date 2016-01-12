require_relative 'menu'

class Takeaway

  attr_reader :menu

  def initialize(menu:)
    @menu = menu
    @order = {}
  end

  def print_menu
    menu.print
  end

  def select_dishes(item, qty)
    @order[item] = qty
  end

  def total

  end


  private



end
