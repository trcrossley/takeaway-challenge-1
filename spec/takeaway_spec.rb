require 'takeaway'

describe Takeaway do
  subject(:takeaway) { described_class.new(menu: menu, order: order) }

  let(:menu) { double(:menu, print: printed_menu) }
  let(:order) { double(:order) }

  let(:printed_menu) { "Carnitas_Burrito $4.99"}
  let(:dishes) { {Chimichangas: 1, Chicken_Tacos: 1} }

  it "shows the menu with dishes and prices" do
    expect(takeaway.print_menu).to eq(printed_menu)
  end

  it "allows a customer to order an amount of available dishes" do
    expect(order).to receive(:add).twice
    takeaway.place_order(dishes)
  end
end
