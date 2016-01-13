require 'menu'

describe Menu do

  subject(:menu) { described_class.new(dishes) }

  let(:dishes) { {Chimichangas: 4.99, Chicken_Tacos: 3.99} }

  it 'has a list of dishes with prices' do
    expect(menu.dishes).to eq(dishes)
  end

  it "prints a list of dishes with prices" do
    printed_menu = "Chimichangas $4.99, Chicken_Tacos $3.99"
    expect(menu.print).to eq(printed_menu)
  end

  it "confirms if a dish is available to order" do
    expect(menu.available?(:Chimichangas)).to be(true)
  end

  it "confirms if a dish is not on the menu" do
    expect(menu.available?(:Chicken_Curry)).to be(false)
  end
end
