require 'menu'

describe Menu do

  subject(:menu) { described_class.new(dishes) }
  let(:dishes) do
    {
      Chimichangas: 4.99,
      Chicken_Tacos: 3.99
    }
  end

  it 'has a list of dishes with prices' do
    expect(menu.dishes).to eq(dishes)
  end

  it "prints a list of dishes with prices" do
    printed_menu = "Chimichangas $4.99, Chicken_Tacos $3.99"
    expect(menu.print).to eq(printed_menu)
  end
end
