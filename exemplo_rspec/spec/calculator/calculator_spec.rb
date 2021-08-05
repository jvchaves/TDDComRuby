require 'calculator'
describe Calculator do
  it 'sum method for 2 numbers' do
    calc = Calculator.new
    result = calc.sum(5,2)
    expect(result).to eq(7)
  end


end