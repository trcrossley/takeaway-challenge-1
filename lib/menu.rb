class Menu

  attr_reader :dishes

  def initialize(dishes)
    @dishes = dishes
  end

  def print
    dishes.map do |item, price|
      "%s $%.2f" % [item.to_s, price] #string interpolation
    end.join(", ")
  end

  # def list
  #   menu_list
  # end

  # def menu_list
  #   dishes = {
  #     Chips_and_Salsa: 1.99,
  #     Guacamole: 1.99,
  #     Chimichangas: 4.99,
  #     Chicken_Tacos: 3.99,
  #     Chicken_Burrito: 4.99,
  #     Carnitas_Tacos: 3.99,
  #     Carnitas_Burrito: 4.99,
  #     Mexican_Rice: 2.99,
  #     Refried_Beans: 2.99
  #   }
  # end
end
