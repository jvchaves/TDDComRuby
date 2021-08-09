require 'calculator'
describe Calculator do
  context 'use sum method for 2 numbers' do
    it 'with positive numbers' do
      result = subject.sum(5,2)
      expect(result).to eq(7)
    end
    it 'with negative numbers' do
      result = subject.sum(5,-12)
      expect(result).to eq(-7)
    end
  end
  context '#div' do
    it 'divide by 0' do
      expect{subject.div(3,0)}.to raise_error(ZeroDivisionError)
    end
  end
end