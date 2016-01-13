require 'order'
require 'menu'

describe Order do
  subject(:order) { described_class.new(menu) }

  let(:menu) { instance_double("Menu") }
  let(:dishes) { {Chimichangas: 2, Chicken_Tacos: 2} }

  before do
    allow(menu).to receive(:available?).with(:Chimichangas).and_return(true)
    allow(menu).to receive(:available?).with(:Chicken_Tacos).and_return(true)
  end

  it "selects dishes from the menu to order" do
    order.add(:Chimichangas, 2)
    order.add(:Chicken_Tacos, 2)
    expect(order.dishes).to eq(dishes)
  end

  it "prevents non-available items from being added" do
    allow(menu).to receive(:available?).with(:Chicken_Curry).and_return(false)
    expect { order.add(:Chicken_Curry, 2) }.to raise_error NoItemError, ("Chicken_Curry is not on the menu")
  end
end
