require 'counter'
describe 'Matcher change' do
  it {expect{Counter.increment}.to change { Counter.amount }}
  it {expect{Counter.increment}.to change { Counter.amount }.by(1)}
  it {expect{Counter.increment}.to change { Counter.amount }.from(2).to(3)}
end